# Set a custom quote bank file using the QUOTER_BANK variable
if [[ ! "${QUOTER_BANK}" ]]; then
    QUOTER_BANK = "default"
fi

# Check if the quote bank file exists
if [[ -f ${QUOTER_BANK} ]]
    # Include the quote bank file
    source "./src/${QUOTER_BANK}.zsh"

    # Output a random quote
    echo "${quoter_selection[RANDOM % #quoter_selection + 1]}"
    echo
    unset quoter_selection
fi
