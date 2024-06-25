alias zshconfig="vi ~/.zshrc"
alias lg=lazygit
alias ld=lazydocker
# python virtualenv activation
alias activate=". env/bin/activate"
alias act_pr="act pull_request"
alias caddy_front="caddy reverse-proxy --from localhost:443 --to localhost:3001"
alias refresh_test_db="npm run _test docker:down && npm run _test docker:up && npm run _test typeorm:sync"
alias _dev="dotenv -e .dev.env"
alias _test="dotenv -e .test.env"
alias dev_front="dotenv -e .dev.env npm run start"


push_localize_translation()
{
  LANG=$1
  lokalise2 --project-id ${LOCALIZE_TRAACE_PROJECT} -t ${LOCALIZE_WRITE_TOKEN} file upload --file src/locales/${LANG}/translation.json --lang-iso ${LANG}
}

pull_localize_translation() {
  lokalise2 --project-id ${LOCALIZE_TRAACE_PROJECT} -t ${LOCALIZE_WRITE_TOKEN} file download --original-filenames=false --bundle-structure src/locales/\%LANG_ISO\%/translation.%FORMAT% --json-unescaped-slashes --replace-breaks=false --format json --indentation 2sp --export-sort first_added --plural-format i18next_v4
}

alias pull_localize="pull_localize_translation"

alias push_localize="push_localize_translation en && push_localize_translation fr && push_localize_translation de"
