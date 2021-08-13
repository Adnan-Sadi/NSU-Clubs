@extends(($manages == 1) ? 'layouts.adminDataTable' : 'layouts.generalDataTable');

@section('content')

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Members</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.7.1/css/buttons.bootstrap4.min.css">
    <link rel="stylesheet" href="{{ asset('css/membersStyles.css') }}">  

  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>

  <script src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script> 
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.bootstrap4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>
</head>
<body>

  <!-- Members list Section -->
  <div class="container">
    <section style="padding-top: 60px; padding-bottom:60px;">
     <div id="all_mem" class="text-left">All Members</div><br/>

      <!-- Add member Button -->
      @if ($manages == 1)

        <div align="right">
        <button type="button" name="create_member" id="create_member" class="btn btn-success btn-sm">Add Member</button>
        </div><br>

      @endif
      

     <!-- Add Member Modal Starts --> 
          <div id="formModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header bg-dark text-white">
                    
                    <h4 class="modal-title">Add New Member</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <div class="modal-body">
                  <!-- form validation message -->  
                  <span id="form_result"></span>

                  <form method="post" id="member_form" class="form-horizontal">
                    @csrf
                    <div class="form-group">
                      <label class="control-label col-md-4" >Name : </label>
                      <div class="col-md-8">
                      <input type="text" name="name" id="name" class="form-control" />
                      </div>
                    </div>
                    
                    <div class="form-group">
                      <label class="control-label col-md-4">NSU Id : </label>
                      <div class="col-md-8">
                      <input type="text" name="nsu_id" id="nsu_id" class="form-control" />
                      </div>
                    </div>

                    <div class="form-group">

                      <div class="input-group mb-3 col-md-12">
                            <div class="input-group-prepend">
                              <label class="input-group-text" >Department</label>
                            </div>
                          <select class="custom-select" name="dept_id" id="dept_id">
                            
                            @foreach ($departments as $department )
                              <option value="{{ $department->dept_id }}">{{ $department->dept_name }}</option>
                            @endforeach
                          
                           </select>
                      </div>
                        
                    </div>

                    <div class="form-group">
                      <label class="control-label col-md-4">Email : </label>
                      <div class="col-md-8">
                      <input type="text" name="email" id="email" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Phone Number : </label>
                      <div class="col-md-8">
                      <input type="text" name="phone_num" id="phone_num" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Position : </label>
                      <div class="col-md-8">
                      <input type="text" name="position" id="position" class="form-control" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-md-4">Join Date </label>
                      <div class="col-md-8">
                      <input type="date" name="join_date" id="join_date" class="form-control" />
                      </div>
                    </div><br>

                    <div class="form-group" align="center">
                          <input type="hidden"  name="club_id" value="{{ $club_id }}">
                          <input type="hidden" name="action" id="action" value="Add" />
                          <input type="hidden" name="hidden_id" id="hidden_id" />
                          <input type="submit" name="action_button" id="action_button" class="btn btn-warning" value="Add" />
                    </div>
                  </form>
                  </div>
              </div>
              </div>
          </div>
     <!-- Add Member Modal Ends -->
     
     <!-- Confirm Delete Modal Starts --> 
     <div id="confirmModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-header">                    
                      <h2 class="modal-title">Confirmation</h2>
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                  </div>
                  <div class="modal-body">
                      <h4 align="center" style="margin:0;">Are you sure you want to remove this member?</h4>
                  </div>
                  <div class="modal-footer">
                    <!-- csrf-token -->
                  <meta name="csrf-token" content="{{ csrf_token() }}">
                  <button type="button" name="ok_button" id="ok_button" class="btn btn-danger">OK</button>
                      <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                  </div>
              </div>
          </div>
      </div>
      <!-- Confirm Delete Modal Ends --> 
      
@endsection

