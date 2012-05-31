$(function() {
  $('form a.add_child').click(function() {
    var association = $(this).attr('data-association');
    var template = $('#' + association + '_fields_template').html();
    var regexp = new RegExp('new_' + association, 'g');
    var id = $('form').children('.control-group').children('.people-fields').last().children('.destroy').attr('name');
    id = id.replace(/\D/g, "");
    var new_id = parseInt(id) + 1;

    $('form').children('.control-group').children('.people-fields').last().after(template.replace(regexp, new_id));
    return false;
  });

  $('form a.remove_child').live('click', function() {
    $(this).parents('.people-fields').children('input[class=destroy]').attr('value', true);
    $(this).parents('.people-fields').hide();
    return false;
  });
});
