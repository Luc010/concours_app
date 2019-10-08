# Workaround for Docker for Windows in Git Bash.
docker()
{
    (export MSYS_NO_PATHCONV=1; "docker.exe" "$@")
}
alias composer='docker run --rm -it -v $(pwd):/app -w /app composer:latest'
alias doctrine='docker exec -it php php vendor/bin/doctrine'
alias npm='docker run --rm -it -v $(pwd):/app -w /app node:alpine npm'
alias yarn='docker run --rm -it -v $(pwd):/app -w /app node:alpine yarn'