$(function(){
  function buildHTML(message){
    var html = `
    <p class="chat_name">
    ${message.user_name}  ${message.time}<br/>
    </p>
    <p>
    ${message.body}
    </p>`
    return html;
  }

  $('#new_message').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.chat_contents').append(html)
      $('.bodybox').val('')
      $('.chat_contents').animate({scrollTop: $('.chat_contents')[0].scrollHeight}, 'slow');
    })
    .fail(function(){
      alert('error');
    })
    return false;
  })
})
