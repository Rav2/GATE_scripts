# Autor: Rafał Masełek
## Email: rafalmaselek@gmail.com

W tym katalogu znajdują się 2 katalogi NEMA_PROMPT oraz NEMA_511, w których znajdują się makra GATE. Używałem ich do generowania eventów
odpowiednio 1-fotonowych i 2-fotonowych. Potrzebowałem zrobić wiele identycznych symulacji dla różnych promieni źródła. Stąd potrzebowałem
stworzyć odpowiednie skrypty:


1) script.sh


2) pyscript.py


3) run_simulation.sh


4) get_nema_results.sh

Ad 1) Skrypt, który ładuje moduły i uruchamia symulację. W obu katalogach taki jest.


Ad 2) Skrypt, który przyjmuje liczbę całkowitą jako argument i podmienia odpowiednie linijki w makrach.
Konkretnie to zmienia promień źródła, nazwę pliku wyjściowego.


Ad 3) Skrypt, który dodaje joby do kolejki. Definiuje się tam z jakiego folderu ma brać makra, jakiej kolejki użyć oraz jakie liczby
mają być podawane do pyscript.py


Ad 4) Kopiuje pliki outputowe do jednego katalogu i tworzy z nich archiwum. Trzeba wywołać dwa razy jeśli chce się mieć i prompty i 511 keV.
