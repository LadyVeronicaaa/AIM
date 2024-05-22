@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Barangay Case</h1>
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
                  <h3 class="card-title"> Certification Template </h3>
                </div>
                
                <form method= "post" >
                    

                    <div class="row justify-content-center pt-5 pb-5">
                        <div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2">
                            <div class="card card-default">
                                <div class="card-header">
                                    <h3 class="card-title">Certification to File Action (Complaint)</h3>
                                </div>

                                <div class="card-body">
                                    <form method="post" role="form" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" action="../tcpdf_api/examples/complaint.php" target="_blank">
                                        <div class="input-group mb-3">
                                            <span class="input-group-text">Barangay Case No.</span>
                                            <input type="text" id="brgy_case_no" name="brgy_case_no" class="form-control" placeholder="" required>
                                        </div>
                
                                        <div class="row mb-3">
                                            <div class="col-md-6">

                                                <!-- Complainant -->
                                                <label for="complainant">Complainant: <small class="text-muted">(Nagreklamo)</small></label>
                                                    <div class="input-group">
                                                        <span class="input-group-text">Full Name</span>
                                                        <input id="complainant" type="text" class="form-control" name="complainant" placeholder="">
                                                        <span onclick="add_complainant()" class="input-group-addon btn btn-info">Add</span>
                                                    </div>
                                                    <div id="table_value_compainant">
                                                        <table id="table_complainant" class="table table-condensed table-hover"></table>
                                                    </div>
                                                </div>
                
                                                <div class="col-md-6">
                                                    <!-- Complainee -->
                                                    <label for="complainee">Complainee: <small class="text-muted">(Gireklamo)</small></label>
                                                        <div class="input-group">
                                                            <span class="input-group-text">Name (autofill)</span>
                                                            <input id="complainee" onkeyup="checkUser(this.value)" type="text" class="form-control" name="complainee" placeholder="">
                                                            <span onclick="add_complainanee()" class="input-group-addon btn btn-info">Add</span>
                                                        </div>
                                                        <div id="table_complainee_livesearch" style="background: #f2f2f2; border-radius: 0 0 5px 5px;">
                                                            <table class="table-hover">
                                                                <tbody id="responsecontainer" style="cursor: pointer;"></tbody>
                                                            </table>
                                                        </div>
                                                        <div id="table_value_compainant">
                                                            <table id="table_complainee" class="table table-condensed table-hover"></table>
                                                        </div>
                                                    </div>
                                                </div>
                
                                                <div class="input-group mb-3">
                                                    <span class="input-group-text">For</span>
                                                    <input id="for" name="for" type="text" class="form-control" placeholder="" required>
                                                </div>
                
                                                <div class="form-group input-group mb-3">
                                                    <span class="input-group-text">Action Taken</span>
                                                    <input id="action_taken" name="action_taken" type="text" class="form-control" required>
                                                </div>
                
                                                
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       

                    

                  <div class="px-4 mb-4">
                    <button type="submit" name="add_to_udpate" id="add_to_udpate" class="btn btn-primary">
                    Save 
                    </button>
                      <a href="" class="btn btn-danger float-right"> Cancel</a>
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
  
