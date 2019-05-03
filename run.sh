# Not setting shebang interpreter to use default shell
set -euo pipefail

readonly SLEEP="${SLEEP:-5}"

# Termination handling
function sigint_handler {
    >&2 echo -e "\nCaught SIGINT, terminating..."
    exit $?
}

function sigterm_handler {
    >&2 echo -e "\nCaught SIGTERM, terminating..."
    exit $?
}

trap sigint_handler SIGINT
trap sigterm_handler SIGTERM

# Sleep loop
while true; do
    echo "$(whoami) $(id -u):$(id -g)"
    sleep ${SLEEP}
done
