// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
    'use strict';
    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');

        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();


// let select = document.getElementById('select');
// let block = document.querySelectorAll('.block');
// let lastIndex = 0; // После каждой смены опции, сохраняем сюда индекс предыдущего блока
//
// select.addEventListener('change', function() {
//     block[lastIndex].style.display = "none";
//     // Чтобы сразу делать именно его невидимым при следующей смене
//
//     let index = select.selectedIndex; // Определить индекс выбранной опции
//     block[index].style.display = "block"; // Показать блок с соответствующим индексом
//
//     lastIndex = index; // Обновить сохраненный индекс.
// });