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