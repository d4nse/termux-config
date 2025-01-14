MESSAGES=(
    "Your eyes deceive you."
    "And illusion fools you all."
    "The true world revealed."
    "Weaknesses now known to me."
    "You die as you lived."
    "The system needs you."
    "You are the Operator."
    "All systems nominal."
)
MESSAGES_LEN=${#MESSAGES[@]}
MOTD=${MESSAGES[$((1 + RANDOM % MESSAGES_LEN))]}
if echo "$-" | grep i >/dev/null; then
    printf "\n%*s\n" $(((${#MOTD} + COLUMNS) / 2)) "$MOTD"
fi
