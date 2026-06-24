# ~/.bashrc.d/functions.sh

cd() {
    builtin cd "$@" || return

	RED_MSG='\e[1;31m'
	GREEN_MSG='\e[1;32m'
	BLUE_MSG='\e[1;36m'
	RESET_MSG='\e[0m'

    if git_root=$(git rev-parse --show-toplevel 2>/dev/null); then
        if [ "$git_root" != "$LAST_GIT_ROOT" ]; then
            LAST_GIT_ROOT="$git_root"

			REMOTE=$(git remote get-url origin)
            echo -e ""
            echo -e "${BLUE_MSG}📁 Repository:${RESET_MSG} $git_root"
            echo -e "${BLUE_MSG}🌐 Remote:${RESET_MSG} $REMOTE"
            echo -e "${BLUE_MSG}⏳ Fetch...${RESET_MSG}"
            echo -e ""

            # timeout per evitare freeze infinito (es. rete morta)
            if ! timeout 10 git fetch origin; then
                echo "❌ Fetch fallito o timeout. Operazioni bloccate."
                return 1
            fi

            # Stato: assumiamo tutti aggiornati
            OUTDATED=0

			# ottieni lista branch (può essere vuota)
			branches=$(git branch --format='%(refname:short)')

			# 👉 caso: nessun branch locale
			if [ -z "$branches" ]; then
				echo -e "⚠️  ${RED_MSG}Nessun branch locale presente${RESET_MSG}"
				# scegli tu:
				# return 1   # blocca
				# return 0   # lascia passare
			else
				# per ogni branch locale
				while read -r branch; do
					# skip sicurezza (linee vuote)
					[ -z "$branch" ] && continue

					# verifica esistenza remoto
					if git show-ref --verify --quiet refs/remotes/origin/"$branch"; then
						LOCAL=$(git rev-parse "$branch")
						REMOTE=$(git rev-parse origin/"$branch" 2>/dev/null) || continue

						if [ "$LOCAL" != "$REMOTE" ]; then
							OUTDATED=1
							echo -e ""
							echo -e "⚠️  ${RED_MSG}Branch non aggiornato${RESET_MSG}: ${BLUE_MSG}'$branch'${RESET_MSG}"
							echo -e "   Esegui ${GREEN_MSG}git pull origin $branch:$branch${RESET_MSG}"
							echo -e ""
						fi
					else
						echo -e "🌀 ${GREEN_MSG}Branch locale senza remoto${RESET_MSG}: $branch"
						# 👉 opzionale: trattarlo come errore
						OUTDATED=1
					fi

				done <<< "$branches"

				# Se nessun branch era fuori sync
				if [ $OUTDATED -eq 1 ]; then
					echo "🚫 Repo locale non aggiornata. Blocca workflow."
					echo "👉 Esegui: git pull --all"
					# return 1
				else
					echo "✅ Repo locale aggiornata"
				fi

			fi
			echo -e ""
        fi
    else
        unset LAST_GIT_ROOT
    fi
}

