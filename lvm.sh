options=(
    "FDISKlist"
    "FDISKcreate"
    "FDISKdelete"
    "FDISKchange"
    "PVscan"
    "PVcreate"
    "PVdisplay"
    "PVchange"
    "Quit"
    "PVcheck"
    "PVremove"
    "VGscan"
    "VGcreate"
    "VGremove"
    "VGdisplay"
    "VGextend"
    "VGreduce"
    "VGcheck"
    "LVdisplay"
    "LVcreate"
    "LVremove"
    "LVresize"
    "LVscan"
    "LVextend"
    "FScreate"
    "FSchange"
    "FSmount/unmount"
    "FSdisplay"
    "SnapCreate"
    
)

select option in "${options[@]}"; do
    case "$REPLY" in 
        1) cd tso-playbook
           ./tsp.sh fdisk-list.yml
           cd ..
           ;;
        2) cd tso-playbook
           ./tsp.sh fdisk-create.yml
           ;;
        3) cd tso-playbook
           ./tsp.sh fdisk-delete.yml
           cd ..
           ;;
        4) cd tso-playbook
           ./tsp.sh fdisk-change.yml
           cd ..
           ;;  
        5) cd tso-playbook
           ./tsp.sh pvscan.yml
           cd ..
           ;;
        6) cd tso-playbook
           ./tsp.sh pvcreate.yml
           cd .. 
           ;;
        7) cd tso-playbook
           ./tsp.sh pvdisplay.yml
           cd ..
           ;;
        8) cd tso-playbook
           ./tsp.sh pvchange.yml
           cd .. 
           ;;
        9) break ;;
        10) cd tso-playbook
           ./tsp.sh pvcheck.yml
           cd ..
           ;;
        11) cd tso-playbook
           ./tsp.sh pvremove.yml
           cd ..
           ;;

        12) cd tso-playbook
           ./tsp.sh vgscan.yml
           cd ..
           ;;
        13) cd tso-playbook
           ./tsp.sh vgcreate.yml
           cd ..
           ;;
        14) cd tso-playbook
           ./tsp.sh vgremove.yml
           cd ..
           ;;
        15) cd tso-playbook
           ./tsp.sh vgdisplay.yml
           cd ..
           ;;
        16) cd tso-playbook
           ./tsp.sh vgextend.yml
           cd ..
           ;;
        17) cd tso-playbook
           ./tsp.sh vgreduce.yml
           cd ..
           ;;
        18) cd tso-playbook
           ./tsp.sh vgcheck.yml
           cd ..
           ;;   
        19) cd tso-playbook
           ./tsp.sh lvdisplay.yml
           cd ..
           ;;
        20) cd tso-playbook
           ./tsp.sh lvcreate.yml
           cd ..
           ;;
        21) cd tso-playbook
           ./tsp.sh lvremove.yml
           cd ..
           ;;
        22) cd tso-playbook
           ./tsp.sh lvresize.yml
           cd ..
           ;;
        23) cd tso-playbook
           ./tsp.sh lvscan.yml
           cd ..
           ;;  
        24) cd tso-playbook
           ./tsp.sh lvextend.yml
           cd ..
           ;;     
        25) cd tso-playbook
           ./tsp.sh fscreate.yml
           cd ..
           ;;
        26) cd tso-playbook
           ./tsp.sh fschange.yml
           cd ..
           ;;
        27) cd tso-playbook
           ./tsp.sh fsmount.yml
           cd ..
           ;;
        28) cd tso-playbook
           ./tsp.sh fsdisplay.yml
           cd ..
           ;;
        29) cd tso-playbook
           ./tsp.sh snapcreate.yml
           cd ..
           ;;
    esac
    echo Press Enter to see the LVM MENU.
done
