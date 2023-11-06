<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Baza informacji o filmach | Kacper Bogusz</title>
</head>
<body>
    <!-- OSTRZEŻENIE -->
    <p>⚠️ OSTRZEŻENIE:</p>
    <p class="warning"> Po każdej zmianie odśwież stronę!</p>
    <h1>Baza informacji o filmach</h1>
    <p id="author">Kacper Bogusz - 2ht</p>
    
    <!-- FORMULARZ WYSZUKIWANIA FILMU -->
    <div class="search">
        <form method="get" action="">
            <label>Szukaj filmu po roku:</label><br>
            <input type="text" name="search_year">
            <input type="submit" value="Wyszukaj">
            <br><br>
            <label>Szukaj filmu po tytule:</label><br>
            <input type="text" name="search_title">
            <input type="submit" value="Wyszukaj">
        </form>
    </div>

    <table border="1">
        <tr>
            <th>Tytuł</th>
            <th>Gatunek</th>
            <th>Rok wydania</th>
            <th>Obraz</th>
            <th>Opis</th>
            <th>Usuń film</th>
        </tr>

        <?php
            $conn = mysqli_connect("localhost:3307", "root", "", "boguszkacper");

            if(!$conn) {
                die("Błąd: ". mysqli_connect_error());
            }

            $search_year = isset($_GET['search_year']) ? $_GET['search_year'] : '';
            $search_title = isset($_GET['search_title']) ? $_GET['search_title'] : '';

            // WYSZUKIWANIE FILMU
            if ($search_year != '') {
                $sql = "SELECT * FROM filmy WHERE year = '$search_year'";
            } elseif ($search_title != '') {
                $sql = "SELECT * FROM filmy WHERE title LIKE '%$search_title%'";
            } else {
                $sql = "SELECT * FROM filmy";
            }

            $result = mysqli_query($conn, $sql);
            $count = mysqli_num_rows($result);

            if ($count > 0) {
                while ($row = mysqli_fetch_array($result)) {
                    echo "<tr>";
                    echo "<td>" . $row["title"] . "</td>";
                    echo "<td>" . $row["genre"] . "</td>";
                    echo "<td>" . $row["year"] . "</td>";
                    echo "<td><img src='" . $row["image"] . "' alt=' ' height='100'></td>";
                    echo "<td>" . $row["description"] . "</td>";
                    echo "<td style='text-align: center;'><a href='?delete_id=" . $row["id"] . "'>Usuń</a></td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='6'>Baza danych jest pusta!</td></tr>";
            }

            // USUWANIE FILMU
            if(isset($_GET["delete_id"])) {
                $id = $_GET['delete_id'];
                $sql = "DELETE FROM filmy WHERE id=$id";

                if(mysqli_query($conn, $sql)) {
                    echo "<tr><td colspan='6'>Film został usunięty!</td></tr>";
                } else {
                    echo "<tr><td colspan='6'>Błąd: " . mysqli_connect_error() . "</td></tr>";
                }
            }

            // DODAWANIE NOWEGO FILMU
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $id = $_POST["id"];
                $title = $_POST["title"];
                $genre = $_POST["genre"];
                $image = $_POST["image"];
                $year = $_POST["year"];
                $description = $_POST["description"];

                $sql = "INSERT INTO filmy (id, title, genre, image, year, description) VALUES ('$id', '$title', '$genre', '$image', '$year', '$description')";

                if(mysqli_query($conn, $sql)) {
                    echo "<tr><td colspan='6'>Film został dodany! Odśwież stronę, aby zobaczyć zmiany.</td></tr>";
                } else {
                    echo "<tr><td colspan='6'>Błąd: " . mysqli_connect_error() . "</td></tr>";
                }
            }
        ?>
    </table>

    <!-- PRZYCISK DO ODŚWIEŻANIA STRONY -->
    <button id="ref-but" onclick="refreshWithoutParams()">Wyświetl wszystkie filmy</button>

    <hr>

    <!-- FORMULARZ DODAWANIA NOWEGO FILMU -->
    <h2>Dodaj nowy film</h2>
    <form method="post" action="">
        <label>ID:</label><br>
        <input type="text" name="id"><br><br>

        <label>Tytuł:</label><br>
        <input type="text" name="title"><br><br>

        <label>Gatunek:</label><br>
        <input type="text" name="genre"><br><br>

        <label>Rok produkcji:</label><br>
        <input type="text" name="year"><br><br>

        <label>Link do obrazka:</label><br>
        <input type="text" name="image"><br><br>

        <label>Opis</label><br>
        <input type="text" name="description"><br><br>

        <input type="submit" value="Dodaj rekord do bazy danych"/>
    </form>

    <!-- SKRYPT DO ODŚWIEŻANIA STRONY -->
    <script>
        // Odświeżanie strony bez parametrów GET
        function refreshWithoutParams() {
            window.location.href = window.location.pathname;
        }
    </script>
</body>
</html>