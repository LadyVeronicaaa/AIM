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
              <li class="breadcrumb-item active">Certification Template </li>
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
                  <h3 class="card-title"> Certification Template </h3>
                </div>
                
                <form method= "post" >
                    <div class="row g-3 px-4 mt-4">

                        <!-- Header -->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Header</span>
                                <input type="text" class="form-control" id="inputheader" name="header" required>
                            </div>
                        </div>

                        <div class="col-md-12 mb-3">
                            <textarea form="confirmationForm" rows="5" id="paragraph1" type="textarea" class="form-control" name="paragraph1" required placeholder="Content"></textarea>                
                        </div>                       
                        
                        <div class="col-md-12 mb-3">
                             <textarea form="confirmationForm" rows="2" id="paragraph2" type="textarea" class="form-control" name="paragraph2">Issued on 4th day of May 2024 at the office of the Punong Barangay Marasigan, Kalamansi sili St., Barangay Poblacion, Bayugan City.</textarea>
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
  
