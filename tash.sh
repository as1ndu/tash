#!/bin/bash

OPTION1="Linux Mac-OS-X"

echo Tash: The easy, fast TensorFlow installation
echo What is  your operating system?
select opt1 in $OPTION1; do

           #[Choose the operating system]
        if [ "$opt1" = "Linux" ]; then
            export OS=linux

            OPTION3="GPU-enabled  CPU-only"
            echo "b) Do you want the GPU enabled binary or only CPU support?"?
            select opt3 in $OPTION3; do

            #[Decide between Linux GPU-enabled and CPU-only support]
                    if [ "$opt3" = "GPU-enabled" ]; then
                        export Processor=gpu

                        echo What is  version of Python are you using?
                        OPTION3="Python2.7 Python3.4 Python3.5"
                        select opt3 in $OPTION3; do
                            if [ "$opt3" = "Python2.7" ]; then
                               export PythonVersion=cp27-none
                               export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                               sudo pip install --upgrade $TF_BINARY_URL
                               exit

                            elif [ "$opt3" = "Python3.4" ]; then
                                export PythonVersion=cp34-cp34m
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            elif [ "$opt3" = "Python3.5" ]; then
                                export PythonVersion=cp35-cp35m
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            else
                            clear
                            echo Bad entry, run the script again and enter 1, or 2.
                            fi
                        done
                        exit

                    elif [ "$opt3" = "CPU-only" ]; then
                        export Processor=cpu
            #[End Decide between Linux GPU-enabled and CPU-only support]
 
            #[Choose the Linux Python version]
                        echo What is  version of Python are you using?
                        OPTION3="Python2.7 Python3.4 Python3.5"
                        select opt3 in $OPTION3; do
                            if [ "$opt3" = "Python2.7" ]; then
                               export PythonVersion=cp27-none
                               export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                               sudo pip install --upgrade $TF_BINARY_URL
                               exit

                            elif [ "$opt3" = "Python3.4" ]; then
                                export PythonVersion=cp34-cp34m
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            elif [ "$opt3" = "Python3.5" ]; then
                                export PythonVersion=cp35-cp35m
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            else
                            clear
                            echo Bad entry, run the script again and enter 1, or 2.
                            fi
                        done
                        exit
            #[End Choose the Linux Python version]

                    else
                    clear
                    echo Bad entry, run the script again and enter 1, or 2.
                    fi
            done


        elif [ "$opt1" = "Mac-OS-X" ]; then
             export OS=mac
 
            #[Decide between Mac-OS-X  GPU-enabled and CPU-only support]
             OPTION3="GPU-enabled  CPU-only"
             echo "b) Do you want the GPU enabled binary or only CPU support?"?
             select opt3 in $OPTION3; do
                    
                    if [ "$opt3" = "GPU-enabled" ]; then
                        export Processor=gpu
                        
                        echo What is  version of Python are you using?
                        OPTION3="Python2.7 Python3.4 Python3.5"
                        select opt3 in $OPTION3; do
                            if [ "$opt3" = "Python2.7" ]; then
                            export PythonVersion=py2-none-any
                            export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                            exit

                            elif [ "$opt3" = "Python3.4" ]; then
                                export PythonVersion=py3-none-any
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                exit

                            elif [ "$opt3" = "Python3.5" ]; then
                                export PythonVersion=py3-none-any
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-$PythonVersion-linux_x86_64.whl
                                exit

                            else
                            clear
                            echo Bad entry, run the script again and enter 1, or 2.
                            fi
                        done
                        exit

                    elif [ "$opt3" = "CPU-only" ]; then
                        export Processor=cpu
            #[End Decide between Mac-OS-X GPU-enabled and CPU-only support]

            #[Choose the Mac-OS-X Python version]
                        echo What is  version of Python are you using?
                        OPTION3="Python2.7 Python3.4 Python3.5"
                        select opt3 in $OPTION3; do
                            if [ "$opt3" = "Python2.7" ]; then
                            echo This is Python2.7 
                            export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-py2-none-any.whl
                            sudo pip install --upgrade $TF_BINARY_URL
                            exit

                            elif [ "$opt3" = "Python3.4" ]; then
                                echo This is Python3.4
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-py2-none-any.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            elif [ "$opt3" = "Python3.5" ]; then
                                echo This is Python3.5
                                export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/$OS/$Processor/tensorflow-0.12.1-py3-none-any.whl
                                sudo pip3 install --upgrade $TF_BINARY_URL
                                exit

                            else
                            clear
                            echo Bad entry, run the script again and enter 1, or 2.
                            fi
                        done
                        exit
            #[End Choose the Mac-OS-X Python version]

                    else
                    clear
                    echo Bad entry, run the script again and enter 1, or 2.
                    fi
             done
             


        else
        clear
        echo Bad entry, run the script again and enter 1, or 2.
        fi
           #[End Choose the operating system]
done


