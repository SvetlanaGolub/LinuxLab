**1. Что происходит при прерывании скрипта text-trap.sh? Объясните, почему.**  
Мы перехватываем сигнал SIGINT с помощью команды trap и выводим сообщение об аварийном завершении.  
Соответственно при прирывании скрипта с помощью Ctrl+C выводится сообщение.  

**2. Напишите, по какой причине выводы команды ls -l /proc/self и ls -l /proc/$$ отличаются?** 
В случае с командой ls -l /proc/self текущим процессом является как раз эта команда.  
А в случае с командой ls -l /proc/$$ $$ указывает на процесс bash.  

**3. Напишите, какие дескрипторы в выводе команды ls -l /proc/self/fd отвечают за stdin, stdout, stderr.**  
0 - stdin, 1 - stdout, 2 - stderr  

**4. Что происходит с дескрипторами при перенаправлении потоков stdout и stderr в файлы при выполнении команды ls -l /proc/self/fd > /tmp/ls.out 2> /tmp/ls.err?**  
Перенапрявляем поток вывода и поток ошибок в файлы  

**5. Запишите эту же команду, добавив к ней перенаправление потока stdin. Что изменилось?**  
У 1 дескриптора теперь нет права на запись  

**6. Какой эффект наблюдается при выполнении команды exec ps -l?**
Порождённый процесс выполняет команду exec, после которой следует exit в породивший процесс.  

**7. Что означает pos при выводе содержимого файла /proc/$$/fdinfo/3?**  
Указатель чтения/записи, с него начинается чтение из файла или запись в файл.

**8. Существует ли возможность читать содержимое файла test.out даже после его удаления? Почему так происходит?**  
Возможность существует, так как файл test.out был связан с дескриптором, который в свою очередь в памяти остаётся.
