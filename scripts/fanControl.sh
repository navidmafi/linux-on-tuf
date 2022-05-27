#!/bin/bash

control_path=/sys/devices/platform/asus-nb-wmi/throttle_thermal_policy


if [ "$#" -eq  "0" ]
  then
    echo -e "ERROR: No arguments supplied, please provide a valid argument:"
    echo -e "> -balance\n\tBalanced Fan profile"
    echo -e "> -silent\n\tSilent Fan profile"
    echo -e "> -turbo\n\tTurbo Fan profile"
else
    case "$1" in
        -balance )
	    echo 0 | sudo tee $control_path
        ;;
        -turbo )
	    echo 1 | sudo tee $control_path            
        ;;
	-silent )
	    echo 2 | sudo tee $control_path
	;;
        *)
            echo "Please provide a valid argument"
	    echo -e "> -balance\n\tBalanced Fan profile"
    	    echo -e "> -silent\n\tSilent Fan profile"
    	    echo -e "> -turbo\n\tTurbo Fan profile" 
        ;;
    esac 
fi


