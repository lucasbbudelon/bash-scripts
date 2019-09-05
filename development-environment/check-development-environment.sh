printf '\n\e[1m%-10s \t %-10s \t %-10s \t \e[0m\n' NAME VERSION STATUS

while read item; do

    regex="([0-9]+).([0-9]+).([0-9]+)"

    version=($(${item} --version "exit" 2> /dev/null | egrep -o ${regex}))

    if [[ $version =~ $regex ]]; then
        printf '%-10s \t %-10s \t %-1s \e[32m\xE2\x9C\x94\e[39m \n' $item $version ok
    else
        printf '%-10s \t %-10s \t %-1s \xE2\x9D\x8C \n' $item - not-found
    fi
done < development-environment

echo -e "\e[39m\e[0m"