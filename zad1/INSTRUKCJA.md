W tym zadaniu musisz uzupełnić plik **"zad1.sh"** o odpowiednie komendy shella (nie muszą automatycznie przechodzić jedna od drugiej, podając sobie inputy. Wystarczy, że napiszesz, z jakich ty korzystałeś/aś) oraz plik **"ldscript"** tak, żeby był odpowiednim plikiem skryptu linkera. Te dwa pliki stanowią rozwiązanie zadania.

1. korzystając z komendy nm, sprawdź, jakie symbole w pliku main.o są niezdefiniowane. Pomijając symbole malloc i printf, poszukaj niezdefiniowanych symboli w pozostałych plikach obiektowych. Niepotrzebne pliki (te, w których nie znajdują się żadne symbole potrzebne do działania main.o) skasuj.

2. korzystając z komendy strings znajdź, w jakim pliku obiektowym znajduje się łańcuch znakowy "IMPORTANT DEBUG INFO = ???", gdzie zamiast trzech pytajników znajduje się nieznane słowo.

3. znajdź największą wartość symbolu version_id w plikach obiektowych.

4. korzystając z komendy ld, stwórz plik wynikowy o nazwie final_main_???.o, gdzie pod ??? podstaw nieznane słowo, które pojawiło się na końcu łańcucha znakowego w podpunkcie 2. Korzystając ze skryptu linkera, umieść w pliku final_main_???.o symbol final_version_id o wartości równej najmniejszej wartości symbolu version_id, którą znalazłeś w podpunkcie 3. Nazwij skrypt linkera ldscript (bez rozszerzenia). Plik final_main_???.o, po skompilowaniu go komendą gcc final_main_???.o (bez żadnych dodatkowych opcji) powinien być możliwym do uruchomienia plikiem wykonywalnym, który wypisuje rzeczy na stdout i kończy się bez żadnych błędów (takich jak np. segmentation fault).

