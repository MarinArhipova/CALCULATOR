<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>CVSSv2</title>
    <link rel="stylesheet" href="../static/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body class="container">
<div class="py-5 text-center">
    <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h2 class="heading">Common Vulnerability Scoring System Calculator<span></span></h2>
    <p class="lead"> Общая система оценки уязвимостей – это система, которая позволяет
        осуществлять сравнение уязвимостей программного обеспечения с точки зрения их
        опасности.
    </p>
    <a href="about.ftl">Подробнее о системе</a>
</div>

<div class="blocks">
    <div class="col-md-12 order-md-1">
        <form class="needs-validation" method="post">
            <h4 class="mb-3">Базовые метрики</h4>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="one">Вектор атаки (AV):</label>
                    <select class="custom-select d-block w-100" name="one" id="one" required>
                        <option value="">Выбрать...</option>
                        <option value="0.2">Физический (P)</option>
                        <option value="0.55">Локальный (L)</option>
                        <option value="0.62">Смежная сеть (A)</option>
                        <option value="0.85">Сетевой (N)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="two">Сложность атаки (AC):</label>
                    <select class="custom-select d-block w-100" name="two" id="two" required>
                        <option value="">Выбрать...</option>
                        <option value="0.44">Высокая (H)</option>
                        <option value="0.77">Низкая (L)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="three">Уровень привилегий (PR):</label>
                    <select class="custom-select d-block w-100" name="three" id="three" required>
                        <option value="">Выбрать...</option>
                        <option value="0.27">Высокий (H)</option>
                        <option value="0.62">Низкий (L)</option>
                        <option value="0.85">Не требуется (N)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="four">Взаимодействие с пользователем (UI):</label>
                    <select class="custom-select d-block w-100" name="four" id="four" required>
                        <option value="">Выбрать...</option>
                        <option value="0.85">Не требуется (N)</option>
                        <option value="0.62">Требуется (R)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="five">Влияние на другие компоненты системы (S):</label>
                    <select class="custom-select d-block w-100" name="five" id="five" required>
                        <option value="">Выбрать...</option>
                        <option value="0">Не оказывает (U)</option>
                        <option value="1">Оказывает (C)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="six">Влияние на конфиденциальность (С):</label>
                    <select class="custom-select d-block w-100" name="six" id="six" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.22">Низкое (L)</option>
                        <option value="0.56">Высокое (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="seven">Влияние на целостность (I):</label>
                    <select class="custom-select d-block w-100" name="seven" id="seven" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.22">Низкое (L)</option>
                        <option value="0.56">Высокое (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="eight">Влияние на доступность (A):</label>
                    <select class="custom-select d-block w-100" name="eight" id="eight" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.22">Низкое (L)</option>
                        <option value="0.56">Высокое (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <hr class="mb-4">

            <h4 class="mb-3">Временные метрики</h4>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="nine">Доступность средств эксплуатации (E):</label>
                    <select class="custom-select d-block w-100" name="nine" id="nine" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND/X)</option>
                        <option value="0.91">Теоретически (U)</option>
                        <option value="0.94">Есть концепция (POC/P)</option>
                        <option value="0.97">Есть сценарий (F)</option>
                        <option value="1.0">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="ten">Уровень исправления (RL):</label>
                    <select class="custom-select d-block w-100" name="ten" id="ten" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.95">Официальное (O)</option>
                        <option value="0.96">Временное (T)</option>
                        <option value="0.97">Рекомендации (W)</option>
                        <option value="1.0">Недоступно (U)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="eleven">Степень достоверности источника (RC):</label>
                    <select class="custom-select d-block w-100" name="eleven" id="eleven" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.92">Отчёты (U)</option>
                        <option value="0.96">Достоверные отчёты (R)</option>
                        <option value="1.0">Подтверждена (C)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <hr class="mb-4">


            <h4 class="mb-3">Контекстные метрики</h4>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="twelve">Скорректированный вектор атаки (MAV):</label>
                    <select class="custom-select d-block w-100" name="twelve" id="twelve" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.85">Сетевой (N)</option>
                        <option value="0.62">Смежная сеть (A)</option>
                        <option value="0.55">Локальный (L)</option>
                        <option value="0.2">Физический (P)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="thirteen">Скорректированная сложность атаки (MAC):</label>
                    <select class="custom-select d-block w-100" name="thirteen" id="thirteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.77">Низкая (L)</option>
                        <option value="0.44">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="fourteen">Скорректированный уровень привилегий (MPR):</label>
                    <select class="custom-select d-block w-100" name="fourteen" id="fourteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.85">Отсутствует (N)</option>
                        <option value="0.62">Низкая (L)</option>
                        <option value="0.27">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="fifteen">Скорректированное взаимодействие с пользователем (MUI):</label>
                    <select class="custom-select d-block w-100" name="fifteen" id="fifteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.85">Отсутствует (N)</option>
                        <option value="0.62">Требуется (R)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="sixteen">Скорректированное влияние на другие компоненты системы (MS):</label>
                    <select class="custom-select d-block w-100" name="sixteen" id="sixteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.0">Не изменяется (U)</option>
                        <option value="1.0">Изменяется (C)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="seventeen">Скорректированное влияние на конфиденциальность (MС):</label>
                    <select class="custom-select d-block w-100" name="seventeen" id="seventeen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.0">Отсутствует (N)</option>
                        <option value="0.22">Низкая (L)</option>
                        <option value="0.56">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="eighteen">Скорректированное влияние на целостность (MI):</label>
                    <select class="custom-select d-block w-100" name="eighteen" id="eighteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.0">Отсутствует (N)</option>
                        <option value="0.22">Низкая (L)</option>
                        <option value="0.56">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="nineteen">Скорректированное влияние на доступность (MA):</label>
                    <select class="custom-select d-block w-100" name="nineteen" id="nineteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="0.0">Отсутствует (N)</option>
                        <option value="0.22">Низкая (L)</option>
                        <option value="0.56">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="twenty">Требования к конфиденциальности (CR):</label>
                    <select class="custom-select d-block w-100" name="twenty" id="twenty" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="1.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="0.5">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="twentyOne">Требования к целостности (IR):</label>
                    <select class="custom-select d-block w-100" name="twentyOne" id="twentyOne" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="1.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="0.5">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="twentyTwo">Требования к доступности (AR):</label>
                    <select class="custom-select d-block w-100" name="twentyTwo" id="twentyTwo" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (X)</option>
                        <option value="1.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="0.5">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit" style="margin: 25px !important;">Узнать</button>
        </form>
    </div>
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

<script src="../static/js/main.js"></script>
</body>
</html>