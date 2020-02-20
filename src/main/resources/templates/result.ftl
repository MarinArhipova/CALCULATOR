<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Result</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">


<div class="py-5 text-center">
    <h2 style="margin: 20px"><span>Результаты</span></h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Базовые метрики</th>
            <th scope="col">Временные метрики</th>
            <th scope="col">Контекстные метрики</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${baseScore}</td>
            <td>${timeScore}</td>
            <td>${contextScore}</td>
        </tr>
        </tbody>
    </table>

    <ul class="nav justify-content-center" style="margin: 30px">
        <li class="nav-item">
            <a class="nav-link active" href="/cvssv2">CVSSv2</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/cvssv3">CVSSv3</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/about">Подробнее о системе</a>
        </li>
    </ul>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Количественная оценка </th>
            <th scope="col">Уровень опасности</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>0</td>
            <td>Опасность отсутствует</td>
        </tr>
        <tr>
            <td>0,1—3,9</td>
            <td>Низкий</td>
        </tr>
        <tr>
            <td>4,0—6,9</td>
            <td>Средний</td>
        </tr>
        <tr>
            <td>7,0—8,9</td>
            <td>Высокий</td>
        </tr>
        <tr>
            <td>9,0—10,0</td>
            <td>Критический</td>
        </tr>
        </tbody>
    </table>
</div>


<footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2020 Marina Arhipova</p>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>
</html>