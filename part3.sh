#!/bin/bash
export LC_ALL=C.UTF-8
cd ~/lab0
# при выводе ls -l: права, кол-во жестких ссылок, владелец, группа, размер в байтах, время, имя
# рекурснивно заходим в текущий "." каталог, ищем строки начинающиеся с минуса, сортируем по размеру как числа от большего к меньшему, выводим первые 5 строк 
ls -lR . | grep '^-' | sort -k5 -n -r | head -n 5

#рекурснивно заходим в файлы, печатаем без названия и игнорируем регистр, ищем смен или лева. отбрасываем (i) где есть отчет, сортируем по флфавиту и выводим первые 6 строк
grep -rhi -e "смен" -e "лёва" claude_monet | grep -vi "отчёт" | sort | head -n 6

#рекурснивно заходим в файлы и ищем слово "смен", выводим названия файлов, считаем флаг-l считает строки
grep -rl "смен" claude_monet/kitchen/morning_shift claude_monet/kitchen/evening_shift/morning_backup | wc -l

#берем файлы с конца не выводя названия, выводим 2 последние строчки каждого файла, ищем слово "лева/смен" игнорируя регистр, сортируем по алфовиту в обратном порядке 
tail -q -n 2 claude_monet/kitchen/morning_shift/*_tasks claude_monet/kitchen/evening_shift/*_tasks | grep -i -e "лёва" -e "смен" | sort -r

#ищем строки где нет Сеня/Федя, обратный алф порядок, выводим 4 строчки первые, считаем слова
grep -v -e "Сеня" -e "Федя" claude_monet/kitchen/morning_report | sort -r | head -n 4 | wc -w

# рекурснивно обходим текущий каталог. ищем строки начинающиеся на - (файлы) [^ ]* - повторяющиеся символы не пробел, затем проблел, 2 во втором столбце и сразу пробел чтоьы было четко 2 , сортируем по 9 столбцу
ls -lR . | grep '^-[^ ]* *2 ' | sort -k9

#рекусновно обходим каталог, ищем ссылки, выбрасываем строки с shoft, выводим реверсно первые 9 строк
ls -lR . | grep '^l' | grep -v "shift" | sort -k9 -r

echo "5. Удаление"
rm staff_room/late_report
rm staff_room/current_order
rm shift_kitchen
rm shift_message
rm claude_monet/kitchen/common_message
rm claude_monet/kitchen/evening_shift/denis_tasks
rmdir reserve_empty
rm -r claude_monet/kitchen/evening_shift/morning_backup