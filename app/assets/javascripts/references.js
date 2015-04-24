var typeselector = function() {
    console.log('started')
    var selected = $('#article')
    selected.removeClass('hidden')
    
    $('#type-selector').on('change', function() {
        console.log('selected ' + this.value)
        selected.addClass('hidden')
        selected = $('#' + this.value)
        selected.removeClass('hidden')
    })
}
$(document).ready(typeselector)
$(document).on('page:load', typeselector)
