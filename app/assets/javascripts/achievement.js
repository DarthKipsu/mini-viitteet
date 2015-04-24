var achievementDialog = function() {
	$( ".close_ach" ).click(function() {
        $(this.parentNode.parentNode.parentNode).css( "display", "none");
    });
}
$(document).ready(achievementDialog)
$(document).on('page:load', achievementDialog)


