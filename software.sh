options=(
    "Yum Install"
    "Yum List"
    "xxxxxxxx"
    "xxxxxxxx"
    "xxxxxxxx"
    "xxxxxxxx"
    "xxxxxxxx"
    "xxxxxxxx"
    "Quit" 
    
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) cd tso-playbook
           ./tsp.sh yuminstall.yml
           cd ..
           ;;
        2) cd tso-playbook
           ./tsp.sh yumlist.yml
           cd ..
           ;;
        3) cd tso-playbook
           ./tsp.sh groupcreation.yml
           cd ..
           ;;
        4) cd tso-playbook
           ./tsp.sh groupdeletion.yml
           cd ..
           ;;
        5) cd tso-playbook
           ./tsp.sh usercreation.yml
           cd .. 
           ;;
        6) cd tso-playbook
           ./tsp.sh userdeletion.yml
           cd .. 
           ;;
        7) ./lvm.sh
           ;;
        8) echo Underconstruction!
           ;;
        9) break ;;
    esac
    echo Press Enter to see the MAIN MENU.
done
