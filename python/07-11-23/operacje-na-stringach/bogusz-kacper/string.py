# Deklaracja zmiennej z tekstem
text = "Lorem Ipsum"

# Wyświetlenie fragmentu od drugiej do czwartej pozycji (indeks 1 do 3)
print(text[1:4])

# Wyświetlenie przedostatniego znaku
print(text[-2])

# Odwrócenie tekstu
print(text[::-1])

# Wyświetlenie co trzeciego znaku
print(text[::3])

# Deklaracja zmiennej z listą owoców
fruit = "apple,banana,pear"

# Wyświetlenie listy owoców rozdzielonych przecinkiem
print(fruit.split(','))

# Wyświetlenie listy owoców rozdzielonych przecinkiem i spacją
print(fruit.split(', '))

# Podział listy owoców za pomocą pierwszego napotkanego przecinka i spacji
podzial = fruit.split(', ', 1)
print(len(podzial))

# Łączenie elementów listy owoców
print(''.join(fruit))
print(', '.join(fruit))

# Deklaracja zmiennej z ciągiem binarnym
binar = "0, 1, 1, 0, 1, 0"

# Rozdzielenie binarnych wartości na elementy listy
print(binar.split(' '))

# Znalezienie indeksu frazy 'Ips' w tekście
index_find = text.find("Ips")
if index_find != -1:
    print(f"Fraza 'Ips' znaleziona pod indeksem: {index_find}")
else:
    print("Fraza 'Ips' nie została znaleziona")

# Zliczenie wystąpień litery 'm' w tekście
print(text.count('m'))

# Usunięcie białych znaków z lewej strony tekstu
print(text.lstrip())

# Sprawdzenie, czy tekst składa się z samych cyfr
print(text.isdigit())

# Sprawdzenie długości tekstu
print(len(text))
