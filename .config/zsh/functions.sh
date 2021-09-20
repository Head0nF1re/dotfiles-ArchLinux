# ==== Functions ====

# Line break after each command except the first one
precmd() {
    precmd() {
        echo
    }
}


mkgo(){
    mkdir -p -- "$1" &&
    cd -- "$1"
}


up(){
    for i in $(seq "$1"); do cd ..; done
}

# Needed to create something to move around inside different Laravel projects under the same directory (alias is good only if you have one project...)
l(){
    if [[ "$PWD" = "$HOME"/Code/* ]]; then

        if [[ $# -eq 1 && -n $1 ]]; then

            project=$(echo -E $PWD | awk 'BEGIN{FS="/"}{print $5}')

            case $1 in
                base)
                    cd "$HOME/Code/$project/"
                    ;;
                app)
                    cd "$HOME/Code/$project/app/"
                    ;;
                routes)
                    cd "$HOME/Code/$project/routes/"
                    ;;
                db)
                    cd "$HOME/Code/$project/database/"
                    ;;
                views)
                    cd "$HOME/Code/$project/resources/views/"
                    ;;
                storage)
                    cd "$HOME/Code/$project/storage/"
                    ;;
                uploads)
                    cd "$HOME/Code/$project/storage/app/public/uploads/"
                    ;;
                config)
                    cd "$HOME/Code/$project/config/"
                    ;;
                public)
                    cd "$HOME/Code/$project/public/"
                    ;;
                models)
                    cd "$HOME/Code/$project/app/Models/"
                    ;;
                cont)
                    cd "$HOME/Code/$project/app/Http/Controllers/"
                    ;;
                envi)
                    nvim "$HOME/Code/$project/.env"
                    ;;
                json)
                    nvim "$HOME/Code/$project/composer.json"
                    ;;
                *)
                    echo "\n==== Invalid argument: '$1' ===="
                    ;;
            esac

        else
            echo "\n==== Usage: l <folder_name> ===="
        fi

    else
        echo "\n==== You are not in a Project folder! ===="
    fi
}


# Random script to create multiple files incrementing the filename (probably useless, but wtv)
genfile(){
    i="0"
    j="1"

    if [[ "$2" -le 20 && "$2" -ge 1 || "$2" -gt 20 && "$3" = sure ]]; then
        for file in "$1"; do
            for k in $(seq "$2"); do

                if [[ ! -f "$file" ]]; then

                    if [[ $j -lt 10 ]]; then

                        if [[ ! -f "$file$i$j" ]]; then
                            touch "$file$i$j"
                        else
                            echo "==== warning: $file$i$j already exists! ===="
                        fi

                    elif [[ $j -ge 10 ]]; then

                        if [[ ! -f "$file$j" ]]; then
                            touch "$file$j"
                        else
                            echo "==== warning: $file$j already exists! ===="
                        fi
                    fi

                    ((j=j + 1))

                else
                    echo "==== warning: $file already exists! ===="
                fi

            done
        done

    elif [[ "$2" -gt 20 ]] && [[ -z "$3" ]]; then

        echo "==== That's a lot of files, if you are sure do: \"genfile <name_of_file> <number_of_files> sure\" ===="

    else
        echo "Invalid arguments!"
    fi

}
