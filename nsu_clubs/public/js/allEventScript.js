
$(document).ready(function () {
    
    //On-click follow event button
    $(document).on('click', '.follow_event', function () {
        
        var event_id = $(this).attr("data");
        button_id ="#"+ $(this).attr("id");
        console.log(event_id);
        $.ajax({
            url: "/event/"+event_id+"/follow",
            method: "GET",
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },//csrf token
            
            success: function (data) {
             console.log('success');
                $(button_id).removeClass('btn-outline-success');
                $(button_id).removeClass('follow_event');
                $(button_id).addClass('btn-outline-danger');
                $(button_id).addClass('unfollow_event');
                $(button_id).html('<i class="fas fa-times-circle"></i> Follow');
                

            }
        })
    });
    
    //On-click unfollow event button
    $(document).on('click', '.unfollow_event', function () {

        var event_id = $(this).attr("data");
        button_id = "#" + $(this).attr("id");
        console.log(event_id);
        $.ajax({
            url: "/event/" + event_id + "/unfollow",
            method: "GET",
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },//csrf token

            success: function (data) {
                console.log('success');
                $(button_id).removeClass('btn-outline-danger');
                $(button_id).removeClass('unfollow_event');
                $(button_id).addClass('btn-outline-success');
                $(button_id).addClass('follow_event');
                $(button_id).html('<i class="fas fa-check-circle"></i> Follow');

            }
        })
    });

});