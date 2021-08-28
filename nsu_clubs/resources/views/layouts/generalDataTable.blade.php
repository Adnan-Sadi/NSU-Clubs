@yield('content')

       <!-- DataTable starts --> 
        <div class="table-responsive">
          <table id="members-table" class="table table-bordered table-striped">
            <thead>
              <tr>
                <th width="25%">Name</th>
                <th width="20%">NSU Id</th>
                <th width="30%">Department</th>
                <th width="25%">Position</th>
              </tr>
            </thead>

          </table>
        </div>
        <!-- DataTable ends --> 
    </section>
  </div>

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
         {data: 'dept_name', name: 'dept_name'},        
         {data: 'position', name: 'position'},
         
       ],
       lengthMenu: [ [10, 25, 50, 100, -1], [10, 25, 50, 100, "All"] ]
       
       });
    /** Generate DataTable **/

  });
</script>

</body>
</html>