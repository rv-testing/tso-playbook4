options=(
    "Server Validation"
    "Software Management"
    "User/Group Management"
    "File Management"
    "Disk Management"
    "Shell"
    "xxxxxx"
    "Install SOA"
    "Quit" 
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) ./validation.sh
           ;;
        2) ./software.sh
           ;;
        3) ./user.sh
           ;;
        4) ./filesystem.sh
           ;;
        5) ./lvm.sh
           ;;
        6) cd tso-playbook
           sh tsp.sh shell.yml
           cd ..
           ;;
        7) echo Underconstruction!
           ;;
        8) echo Underconstruction!
           ;;
        9) break ;;       
    esac
    echo Press Enter to see the MAIN MENU.
done
