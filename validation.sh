options=(
    "Linux Validation"
    "Windows Validation"
    "Quit" 
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) cd tso-validation
           ./validate-linux.sh
           cd ..
           ;;
        2) cd tso-validation
           ./validate-windows.sh
           ;;
 
        3) break ;;
 
    esac
    echo Press Enter to see the VALIDATION MENU.
done
