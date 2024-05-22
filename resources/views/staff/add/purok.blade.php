@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Add Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Add</a></li>
              <li class="breadcrumb-item active">Purok </li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">


        <!-- Small boxes (Stat box) -->
        <div class="row">


            <div class="col-md-12">
              <div class="card card-info">
                <div class="card-header" style="background-color: maroon;">
                  <h3 class="card-title"> Add Purok</h3>
                </div>
                
                <form method= "post" >
                    <div class="row g-3 px-4 mt-4">
                    
                        
                        <!--Purok Name-->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text"><i class="fa fa-home"></i></span>                  
                                <input id="purok_name" type="text" onkeyup="checkPurok(this.value)" class="form-control" name="purok_name" placeholder="Purok Name" required autofocus>
                                <input type="hidden" id="user_id" name="user_id" value="0">
                                <span class="input-group-addon"><i id="valid_purok" class="glyphicon glyphicon-remove"></i></span>
                            </div>
                        </div>


                        <br class="br" style="display: none;">

                        <!--Purok Leader Name-->
                        <div class="input-group" id="purok_leader" style="display: none;">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="first_name" type="text" class="form-control" name="first_name" placeholder="Purok Leader" readonly>
                        </div>
                                            
                        <br class="br" style="display: none;">

                        <!--Search-->
                        <div class="input-group image-preview input-group-btn" id="citizen" style="display: none;">
                        <!-- don't give a name === doesn't send on POST/GET -->
                            <input id="citizen_name" type="text" onkeyup="checkUser(this.value)" class="form-control image-preview-filename" placeholder="Enter citizen's name">  
                        </div><!-- /input-group image-preview [TO HERE]--> 

                        <br class="br" style="display: none;">

                        <div id="table_Value" class="table-responsive" style="display: none;">                      
                            <table class="table table-condensed table-hover">
                                <thead>
                                    <tr>
                                        <th>First Name</th>
                                        <th>Middle Name</th>
                                        <th>Last Name</th>
                                        <th>Purok Name</th>
                                    </tr>
                                </thead>                    
                                <tbody id="responsecontainer"></tbody>

                            </table>
                        </div>
         
                        <br class="br2">
                        <br class="br2">
                        <br class="br2">
                        
                        <div class="col-md-12 mb-5" id="table_Value2" class="table-responsive2">          
                                            
                            <table class="table table-condensed table-hover">
                                <thead>
                                    <tr>
                                        <th>List of Registered Purok (Name)</th>
                                    </tr>
                                </thead>                    
                                <tbody id="responsecontainer2">
                                </tbody>

                            </table>
                        </div>

                        
                        <div class="card-body d-flex justify-content-end">
                            <div class="mb-4">
                                <button type="submit" name="add_to_udpate" id="add_to_udpate" class="btn btn-primary">
                                    Add 
                                </button>
                                <a href="{{ url ('staff/home')}}" class="btn btn-danger">Cancel</a>
                            </div>
                        </div>

                                   
                                            
                    </div>

                  

                </form>
      
              </div>
            </div>
          

        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

@endsection
  
