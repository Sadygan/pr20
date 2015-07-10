 $('.col').click(function(){
var text = $(this).html();
var id = $(this).attr('id'); // это тебе надо при отправке на сервер - знать что меняешь
$(this).html().append('<input type="text" value="'+text+'">');
})