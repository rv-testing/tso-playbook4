options=(
    "Change File/Directory"
    "Create Link"
    "Copy files"
    "Untar/Unzip files"
    "XXX"
    "XXX"
    "XXX"
    "XXX"
    "Quit" 
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) cd tso-playbook
           sh tsp.sh chown.yml
           cd ..
           ;;
        2) echo underconstruction!
           ;;
        3) cd tso-playbook
           sh tsp.sh copyfile.yml
           cd ..
           ;;
        4) cd tso-playbook
           sh tsp.sh untar.yml
           cd ..
           ;;
        5) cd tso-playbook
           sh tsp.sh usercreation.yml
           cd .. 
           ;;
        6) cd tso-playbook
           sh tsp.sh userdeletion.yml
           cd .. 
           ;;
        7) sh lvm.sh
           ;;
        8) echo Underconstruction!
           ;;
        9) break ;;
    esac
    echo Press Enter to see the FS MENU.
done
