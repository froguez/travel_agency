$(document).ready(function(){
    $('#list_flights').click(function(){

        $.ajax({
            url:'builder/',
            data: serializedDAta,
            type: get,
            success:function(response){
                $("#tab-1").append(response)
            }
        })
    })
})

function activaPill(pill){
    $('.nav-pills a[href="#' + pill + '"]').pill('show');
};