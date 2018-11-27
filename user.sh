options=(
    "Add Linux Group"
    "Remove Linux Group"
    "Add Linux User"
    "Remove Linux User"
    "Reset Password"
    "List User"
    "List Group"
    "Add User to sudoers (no passwd)"
    "Remove User from sudoers"    
    "Quit" 
	"Generate ssh-keygen"    
    
)

select option in "${options[@]}"; do
    case "$REPLY" in      
        1) cd tso-playbook
           ./tsp.sh groupcreation.yml
           cd ..
           ;;
        2) cd tso-playbook
           ./tsp.sh groupdeletion.yml
           cd ..
           ;;
        3) cd tso-playbook
           ./tsp.sh usercreation.yml
           cd .. 
           ;;
        4) cd tso-playbook
           ./tsp.sh userdeletion.yml
           cd .. 
           ;;
        5) cd tso-playbook
           ./tsp.sh password_reset.yml
           cd .. 
           ;;
        6) cd tso-playbook
           ./tsp.sh list_user.yml
           cd .. 
           ;;
        7) cd tso-playbook
           ./tsp.sh list_group.yml
           cd .. 
           ;;
        8) cd tso-playbook
           ./tsp.sh user_sudoers.yml
           cd .. 
           ;;
        9) break ;;
        10) cd tso-playbook
            ./tsp.sh remove_user_sudoers.yml
            cd .. 
            ;;
        11) cd tso-playbook
            ./tsp.sh ssh_keygen.yml
            cd .. 
            ;;
      
    esac
    echo Press Enter to see the USER/GROUP MENU.
done
