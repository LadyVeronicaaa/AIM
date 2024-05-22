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
              <li class="breadcrumb-item active">Fee Type </li>
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
                  <h3 class="card-title"> Add Fee Type </h3>
                </div>
                
                <form method= "post" >
                    <div class="row g-3 px-4 mt-4">
                    
                        <!--Fee Type-->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Fee Type</span>
                                <input id="fee_type" type="text" class="form-control" name="fee_type" placeholder="" required>
                            </div>
                        </div>
                        
                        <!--Amount-->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Amount</span>
                                <input id="amount" type="number" class="form-control" name="amount" placeholder="" required>
                            </div>
                        </div>
                        
                                        
                         <!--Collection type-->
                         <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Collection Type</span>
                                <select id="collection_type" name="collection_type" class="form-control"></select>
                            </div>
                        </div>
                        
                                               

                         <!--Collection Period-->
                         <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Collection Period</span>
                                <select id="collection_period" name="collection_period" class="form-control">    
                                    <option>Monthly</option>
                                    <option>Yearly</option>
                                </select>
                            </div>
                        </div>

                        <!--Collection Starting Date-->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Collection Starting Date</span>
                                <input id="starting_date" type="date" class="form-control" name="starting_date" required>
                            </div>
                        </div>
                        


                    </div>

                  <div class="px-4 mb-4">
                    <button type="submit" name="add_to_udpate" id="add_to_udpate" class="btn btn-primary">
                    Add 
                    </button>
                      <a href="{{ url ('staff/home')}}" class="btn btn-danger float-right"> Cancel</a>
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
  
