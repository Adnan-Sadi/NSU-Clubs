
$(document).ready(function () {

    //On-click follow club button
    $(document).on('click', '.follow_club', function () {

        var club_id = $(this).attr("data");
        button_id = "#" + $(this).attr("id");
        
        $.ajax({
            url: "/club/" + club_id + "/follow",
            method: "GET",
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },//csrf token

            success: function (data) {
                
                $(button_id).removeClass('btn-outline-success');
                $(button_id).removeClass('follow_club');
                $(button_id).addClass('btn-outline-danger');
                $(button_id).addClass('unfollow_club');
                $(button_id).html('<i class="fas fa-times-circle"></i> Unfollow');


            }
        })
    });

    //On-click unfollow club button
    $(document).on('click', '.unfollow_club', function () {

        var club_id = $(this).attr("data");
        button_id = "#" + $(this).attr("id");
        $.ajax({
            url: "/club/" + club_id + "/unfollow",
            method: "GET",
            headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') },//csrf token

            success: function (data) {
                
                $(button_id).removeClass('btn-outline-danger');
                $(button_id).removeClass('unfollow_club');
                $(button_id).addClass('btn-outline-success');
                $(button_id).addClass('follow_club');
                $(button_id).html('<i class="fas fa-check-circle"></i> Follow');

            }
        })
    });

});