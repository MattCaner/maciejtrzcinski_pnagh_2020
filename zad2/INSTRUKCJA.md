W tym zadaniu musisz uzupełnić plik **"zad2.sh"** o odpowiednie komendy shella (nie muszą automatycznie przechodzić jedna od drugiej, podając sobie inputy. Wystarczy, że napiszesz, z jakich ty korzystałeś/aś) oraz plik **"ldscript"** tak, żeby był odpowiednim plikiem skryptu linkera. Te dwa pliki stanowią rozwiązanie zadania.

1. W tym zadaniu nie wolno pisać żadnego nowego kodu, nie wliczając w to skryptu linkera!

2. Przygotuj skrypt linkera o nazwie ldscript, który posłuży do stworzenia prostej biblioteki współdzielonej. W skrypcie, stwórz globalny symbol devinfo_checksum i nadaj mu wartość 0x117a2. Stwórz symbole _align (przypisz mu wartość 4096) i _position_start (o wartości 0x10000). Zadbaj o to, by _align i _position_start nie mogły być dalej linkowane. Przygotuj komendę SECTIONS, w której pozycja startowa będzie miała wartość _position_start, sekcje .text, .data i .bss będą wyrównane do wartości _align, a między sekcją .text i .data będzie dodatkowy odstęp równy 1024.

3. Wykorzystując przygotowany skrypt linkera, korzystając wyłącznie z komendy ld, stwórz z plików obiektowych dostarczonych w zadaniu bibliotekę współdzieloną o nazwie mymath.so

4. Sprawdź poprawność biblioteki mymath.so używając komendy nm - sprawdź, czy wszystkie potrzebne symbole na pewno są w niej zdefiniowane, w tym devinfo_checksum oraz _position_start.

5. Skompiluj plik test.c do pliku o nazwie test.out tak, żeby mógł się poprawnie uruchomić. Musisz w tym celu odpowiednio dołączyć do niego bibiliotekę mymath.so, którą właśnie stworzyłeś. Zastanów się dokładnie, jakich opcji gcc potrzebujesz (podpowiedź: są co najmniej cztery). Plik test.out ma wykonywać się bez żadnego błędu!
