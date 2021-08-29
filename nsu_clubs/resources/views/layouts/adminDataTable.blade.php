@yield('content')

       <!-- DataTable starts --> 
        <div class="table-responsive">
          <table id="members-table" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th width="15%">Name</th>
                <th width="10%">NSU Id</th>
                <th width="20%">Email</th>
                <th width="15%">Department</th>
                <th width="15%">Phone</th>
                <th width="10%">Position</th>
                <th width="15%">action</th>
              </tr>
            </thead>

          </table>
        </div>
        <!-- DataTable ends --> 
    </section>
  </div>

<!-- Start Footer -->
<footer>
 
  <div class="footer">
    <div class="container">
      <div class="row">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
      </div>
      
   
  
    <div class="row">
      <ul>
        <li><a href="#">Contact us</a></li>
        <li><a href="#">Our Services</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Terms & Conditions</a></li>
       
      </ul>
    </div>
  
      <div class="row">
        NSU CLUBS Copyright © 2021 NSU CLUBS - All rights reserved
      </div>
  </div>
  </div>
</footer>
<!-- End Footer -->  
    
<script>
  $(document).ready(function() {
    /** Generate DataTable **/
    $('#members-table').DataTable({
       processing: true,
       serverSide: true,
       ajax: {
          url: "{{ route('club.show_members',['club' => $club_id]) }}"
       },
       columns: [
         {data: 'name', name: 'name'},
         {data: 'nsu_id', name: 'nsu_id'},
         {data: 'email', name: 'email'},
         {data: 'dept_name', name: 'dept_name'},
         {data: 'phone_num', name: 'phone_num'},
         {data: 'position', name: 'position'},
         {data: 'action', name: 'action', orderable:false}
       ],
       dom: "<'row'<'col-sm-12 col-md-3 d-flex justify-content-start'f><'col-sm-12 col-md-3'l><'col-sm-12 col-md-6 d-flex justify-content-end'B>>" +
            "<'row'<'col-sm-12'tr>>" +
            "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>", // positioning the buttons,fields and table
       buttons: [ 
         { extend: 'csv',exportOptions: {columns: [ 0, 1, 2, 3, 4, 5 ]}},
         { extend: 'excel',exportOptions: { columns: [ 0, 1, 2, 3, 4, 5 ]}},
         { extend: 'pdf',exportOptions: { columns: [ 0, 1, 2, 3, 4, 5 ]}}
       ],//Export Buttons
       lengthMenu: [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ] //number of entries
       
       });
    /** Generate DataTable **/
     
     // On-click create member button
     $('#create_member').click(function(){
      $('.modal-title').text('Add New Record');
      $('#action_button').val('Add');
      $('#member_form')[0].reset();
      $('#exec_member_form')[0].reset();
      $('#action').val('Add');
      $('#form_result').html(''); //remove previous success/error message

      $('#formModal').modal('show');
    });
   
    // On-click create executive member button
    $('#create_exec_member').click(function(){
      $('.modal-title').text('Add New Record');
      $('#ex_action_button').val('Add');
      $('#exec_member_form')[0].reset();
      $('#ex_action').val('Add');
      $('#form_result_2').html(''); //remove previous success/error message

      $('#exampleModalScrollable').modal('show');
    });

     /** Add New Executive Member **/
     $('#exec_member_form').on('submit', function(event){
        event.preventDefault();//stops form from submitting data to server

        var action_url = '';
        var action_method='';
        let formData = new FormData(this);
        
        //checking if the action is Add
        if($('#ex_action').val() == 'Add')
        {
        action_url = "{{ route('ex_members.store') }}";
        action_method="POST";
        }
        //checking if the action is Edit
        if($('#ex_action').val() == 'Edit')
        {
        var m_id = $('#ex_hidden_id').val(); //geting member id

        action_url = "/ex_members/"+m_id;
        action_method="POST";
        }

        $.ajax({
        url: action_url,
        method: action_method,
        headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        
        data:formData,
        contentType: false,
        processData: false,
        //ajax call success function
        success:function(data)
        {
          var html = ''; //html containing error/success message
          //if there are errors, add error message
          if(data.errors)
          {
          html = '<div class="alert alert-danger">';
          for(var count = 0; count < data.errors.length; count++)
          {
            html += '<p>' + data.errors[count] + '</p>';
          }
          html += '</div>';
          }
          //if there are no errors, add success message
          if(data.success)
          {
          html = '<div class="alert alert-success">' + data.success + '</div>';
          $('#exec_member_form')[0].reset(); //reset form values
          window.location.reload();//reloads page
          }
          $('#form_result_2').html(html); //display error or success message    
        },
        //ajax call error function
        error:function(data){
                var errors = data.responseJSON;
                console.log(errors);//display errors in console
      }       
        });
      });
      /** Add New Executive Member **/

    /** Edit Existing Executive Member **/
      $(document).on('click', '.ex_edit', function(){
        var id = $(this).attr('id');
        $('#form_result_2').html('');
        
        $.ajax({
        url :"/ex_members/"+id+"/edit",
        dataType:"json",
        //ajax call success function
        success:function(data)
        {
          $('#ex_name').val(data.result[0].name);
          $('#ex_nsu_id').val(data.result[0].nsu_id);
          $('#ex_dept_id').val(data.result[0].dept_id);
          $('#ex_email').val(data.result[0].email);
          $('#ex_phone_num').val(data.result[0].phone_num);
          $('#ex_position').val(data.result[0].position);
          var date = data.result[0].join_date.split("T");//splitting the date
          $('#ex_join_date').val(date[0]);
          $('#uploaded_image').val(data.result[0].photo);
          $('#ex_hidden_id').val(id);
          $('.modal-title').text('Edit Record');
          $('#ex_action_button').val('Edit');
          $('#ex_action').val('Edit');
          $('#exampleModalScrollable').modal('show');
        }
        })
      });
      /** Edit Existing Executive Member **/



    /** Add New Member **/
     $('#member_form').on('submit', function(event){
        event.preventDefault();//stops form from submitting data to server

        var action_url = '';
        var action_method='';

        if($('#action').val() == 'Add')
        {
        action_url = "{{ route('members.store') }}";
        action_method="POST";
        }

        if($('#action').val() == 'Edit')
        {
        var m_id = $('#hidden_id').val(); //geting member id

        action_url = "/members/"+m_id;
        action_method="PUT";
        }

        $.ajax({
        url: action_url,
        method: action_method,
        data:$(this).serialize(),
        dataType:"json",
        //ajax call success function
        success:function(data)
        {
          var html = ''; //html containing error/success message
          //if there are errors, add error message
          if(data.errors)
          {
          html = '<div class="alert alert-danger">';
          for(var count = 0; count < data.errors.length; count++)
          {
            html += '<p>' + data.errors[count] + '</p>';
          }
          html += '</div>';
          }
          //if there are no errors, add success message
          if(data.success)
          {
          html = '<div class="alert alert-success">' + data.success + '</div>';
          $('#member_form')[0].reset(); //reset form values
          $('#members-table').DataTable().ajax.reload(); //reload table
          }
          $('#form_result').html(html); //display success or error message
        }
        });
      });
      /** Add New Member **/

      /** Edit Existing Member **/
      $(document).on('click', '.edit', function(){
        var id = $(this).attr('id');
        $('#form_result').html('');
        
        $.ajax({
        url :"/members/"+id+"/edit",
        dataType:"json",
        //ajax call success function
        success:function(data)
        {
          $('#name').val(data.result.name);
          $('#nsu_id').val(data.result.nsu_id);
          $('#dept_id').val(data.result.dept_id);
          $('#email').val(data.result.email);
          $('#phone_num').val(data.result.phone_num);
          $('#position').val(data.result.position);
          var date = data.result.join_date.split("T");//splitting the date
          $('#join_date').val(date[0]);
          $('#hidden_id').val(id);
          $('.modal-title').text('Edit Record');
          $('#action_button').val('Edit');
          $('#action').val('Edit');
          $('#formModal').modal('show');
        }
        })
      });
      /** Edit Existing Member **/
      
      /** Delete Member **/
      var member_id;

      $(document).on('click', '.delete', function(){
        member_id = $(this).attr('id');//get member id
        
        $('#confirmModal').modal('show');
      });

      $('#ok_button').click(function(){
        var token = $("meta[name='csrf-token']").attr("content");

        $.ajax({
        url:"/members/"+member_id,
        method: "DELETE",
        data: {
            "m_id": member_id,
            "_token": token,
        },
        beforeSend:function(){
          $('#ok_button').text('Deleting...'); //change ok button text with 'Deleting...' text
        },
        //ajax call success function
        success:function(data)
        {
          setTimeout(function(){
          $('#confirmModal').modal('hide');
          $('#members-table').DataTable().ajax.reload();
          $('#ok_button').text('OK');
          }, 1000); // function is called after 1 seconds
        }
        })
      });
      /** Delete Member **/

  });
</script>

</body>
</html>