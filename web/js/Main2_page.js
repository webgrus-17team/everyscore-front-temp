$("#submit_box").click( function() {
  $.ajax({
    url: 'http://localhost:8080/api/v1/input',
    type: 'post',
    data: $('form').serialize(),
    dataType: 'json',
    success: function(data){
      window.location.href='Result_Page.jsp';
    }
  })
})
