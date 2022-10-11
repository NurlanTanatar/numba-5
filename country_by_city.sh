# создаем массив имен городов и пишем параметр делиметра для массива
cities=("Tokyo" "London" "Los Angeles" "Moscow" "Dubai" "New York" "Paris" "Istanbul" "Milan" "Abu Dhabi" "Berlin" "exit")
IFS=""

echo "Choose one of these cities to see its country name(type a number one of these cities):"
select city in ${cities[*]}
do
    if [ ! "$city" == "exit" ]; then # если не выбран пункт 12
        echo -n "its country: " # флаг -n позволяет убрать перенос строки
    else
        exit 0 # выход из интерактивного режима
    fi
    case "$city" in 
        "${cities[0]}" ) echo "Japan" ;;
        "${cities[1]}" ) echo "United Kingdom" ;;
        "${cities[2]}" | "${cities[5]}" ) echo "United States of America" ;;
        "${cities[3]}" ) echo "Russian Federation";;
        "${cities[4]}" | "${cities[9]}" ) echo "United Arab Emirates";;
        "${cities[6]}" ) echo "France";;
        "${cities[7]}" ) echo "Turkey";;
        "${cities[8]}" ) echo "Italy";;
        "${cities[10]}" ) echo "Germany";;
        * ) echo "type city number correctly";; # выбор для остальных тест-кейсов
    esac
done

