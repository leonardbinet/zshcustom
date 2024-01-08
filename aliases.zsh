alias zshconfig="vi ~/.zshrc"
alias lg=lazygit
# python virtualenv activation
alias activate=". env/bin/activate"
alias act_pr="act pull_request"
alias caddy_front="caddy reverse-proxy --from localhost:443 --to localhost:3001"
alias refresh_test_db="npm run _test docker:down && npm run _test docker:up && npm run _test typeorm:sync"
alias _dev="dotenv -e .dev.env"
alias _test="dotenv -e .test.env"
alias dev_front="dotenv -e .dev.env npm run start"
alias push_localize="lokalise2 --project-id ${LOCALIZE_TRAACE_PROJECT} -t ${LOCALIZE_WRITE_TOKEN} file upload --file src/locales/en/translation.json --lang-iso en && lokalise2 --project-id ${LOCALIZE_TRAACE_PROJECT} -t ${LOCALIZE_WRITE_TOKEN} file upload --file src/locales/fr/translation.json --lang-iso fr && lokalise2 --project-id ${LOCALIZE_TRAACE_PROJECT} -t ${LOCALIZE_WRITE_TOKEN} file upload --file src/locales/de/translation.json --lang-iso de"
