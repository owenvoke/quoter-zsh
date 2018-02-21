# Set a custom quote bank file using the QUOTER_BANK variable
if [[ ! "${QUOTER_BANK}" ]]; then
    QUOTER_BANK="default"
fi

# Generate the relative path to the quoter bank
quoter_bank_file="$(dirname -- "$0")/src/${QUOTER_BANK}.zsh"

# Check if the quote bank file exists
if [[ -f "${quoter_bank_file}" ]]; then
    # Include the quote bank file
    source "${quoter_bank_file}"

    # Output a random quote
    echo "${quoter_selection[RANDOM % ${#quoter_selection} + 1]}"
    echo

    # Free up memory
    unset quoter_selection
fi
