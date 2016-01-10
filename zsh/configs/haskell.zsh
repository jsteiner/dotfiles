PATH="./.cabal-sandbox/bin:$HOME/.cabal/bin:$PATH"

# Just type-check the file. Don't compile it.
alias hcompile="ghc -fno-code"

new-yesod-project() {
  name=$1
  stack new "$1" yesod-postgres
  cd "$1"
  stack install yesod-bin cabal-install --install-ghc
  stack build
  echo "Run the server: stack exec -- yesod devel"
}
