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
        опасности. В настоящее время наибольшее распространение в практической
        деятельности по оценке опасности уязвимостей получила версия 2.0 общей
        системы оценки уязвимостей.
    </p>
    <a href="about.ftl">Подробнее о системе</a>
</div>

<div class="blocks">
    <div class="col-md-12 order-md-1">
        <form class="needs-validation" method="post">
            <h4 class="mb-3">Базовые метрики</h4>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="one">Способ получения доступа (AV):</label>
                    <select class="custom-select d-block w-100" name="one" id="one" required>
                        <option value="">Выбрать...</option>
                        <option value="0.395">Локальный (L)</option>
                        <option value="0.646">Смежная сеть (A)</option>
                        <option value="1.0">Сетевой (N)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="two">Сложность получения доступа (AC):</label>
                    <select class="custom-select d-block w-100" name="two" id="two" required>
                        <option value="">Выбрать...</option>
                        <option value="0.35">Высокая (H)</option>
                        <option value="0.61">Средняя (M)</option>
                        <option value="0.71">Низкая (L)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="three">Аутентификация (Au):</label>
                    <select class="custom-select d-block w-100" name="three" id="three" required>
                        <option value="">Выбрать...</option>
                        <option value="0.45">Множественная (M)</option>
                        <option value="0.56">Единственная (S)</option>
                        <option value="0.704">Не требуется (N)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="four">Влияние на конфиденциальность (С):</label>
                    <select class="custom-select d-block w-100" name="four" id="four" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.275">Частичное (P)</option>
                        <option value="0.66">Полное (C)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="five">Влияние на целостность (I):</label>
                    <select class="custom-select d-block w-100" name="five" id="five" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.275">Частичное (P)</option>
                        <option value="0.66">Полное (C)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="six">Влияние на доступность (A):</label>
                    <select class="custom-select d-block w-100" name="six" id="six" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не оказывает (N)</option>
                        <option value="0.275">Частичное (P)</option>
                        <option value="0.66">Полное (C)</option>
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
                    <label for="seven">Возможость использования (E):</label>
                    <select class="custom-select d-block w-100" name="seven" id="seven" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.85">Теоретически (U)</option>
                        <option value="0.9">Есть концепция (POC)</option>
                        <option value="0.95">Есть сценарий (F)</option>
                        <option value="1.0">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="eight">Уровень исправления (RL):</label>
                    <select class="custom-select d-block w-100" name="eight" id="eight" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.87">Официальное (OF)</option>
                        <option value="0.9">Временное (T)</option>
                        <option value="0.95">Рекомендации (W)</option>
                        <option value="1.0">Недоступно (U)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="nine">Степень достоверности источника (RC):</label>
                    <select class="custom-select d-block w-100" name="nine" id="nine" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.9">Не подтверждена (UC)</option>
                        <option value="0.95">Не доказана (UR)</option>
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
                <div class="col-md-5 mb-3">
                    <label for="ten">Вероятность нанесения косвенного ущерба (CDP):</label>
                    <select class="custom-select d-block w-100" name="ten" id="ten" required>
                        <option value="">Выбрать...</option>
                        <option value="0.0">Не определено (ND)</option>
                        <option value="0.0">Отсутствует (N)</option>
                        <option value="0.1">Низкая (L)</option>
                        <option value="0.3">Средняя (LM)</option>
                        <option value="0.4">Повышенная (MH)</option>
                        <option value="0.5">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-5 mb-3">
                    <label for="eleven">Плотность целей (TD):</label>
                    <select class="custom-select d-block w-100" name="eleven" id="eleven" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.0">Отсутствует (N)</option>
                        <option value="0.25">Низкая (L)</option>
                        <option value="0.75">Средняя (M)</option>
                        <option value="1.0">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-3">
                    <label for="twelve">Требования к конфиденциальности:</label>
                    <select class="custom-select d-block w-100" name="twelve" id="twelve" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="1.51">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="thirteen">Требования к целостности:</label>
                    <select class="custom-select d-block w-100" name="thirteen" id="thirteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="1.51">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="fourteen">Требования к доступности:</label>
                    <select class="custom-select d-block w-100" name="fourteen" id="fourteen" required>
                        <option value="">Выбрать...</option>
                        <option value="1.0">Не определено (ND)</option>
                        <option value="0.5">Низкая (L)</option>
                        <option value="1.0">Средняя (M)</option>
                        <option value="1.51">Высокая (H)</option>
                    </select>
                    <div class="invalid-feedback">
                        Пожалуйста, выберите значение
                    </div>
                </div>
            </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit" style="margin: 25px !important;">Узнать</button>
<#--<#if baseScore??>-->
<#--<h4 style="color: crimson">Результат:</h4>-->
<#--<table border="1" style="width: auto">-->
<#--    <tr>-->
<#--        <th>Базовые метрики</th>-->
<#--    <th>Временные метрики</th>-->
<#--    <th>Контекстные метрики</th>-->
<#--    </tr>-->
<#--    <tr><td>${baseScore}</td><td>${timeScore}</td><td>${contextScore}</td></tr>-->
<#--    </table>-->
<#--</#if>-->
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