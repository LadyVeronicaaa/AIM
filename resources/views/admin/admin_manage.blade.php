@extends('admin.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Admin Management Page</h1>
          </div><!-- /.col -->
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Citizen </li>
              <li class="breadcrumb-item ">Business </li>
            </ol>
          </div>/.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            
            @include('messages')
            <!-- Small boxes (Stat box) -->
            <div class="row">
                 <!-- citizen -->
                 <div class="col-md-12 ">
                    <div class="card card-info">
                        <div class="card-header" style="background-color: maroon;"> 
                            <h3 class="card-title">Admin </h3>
                        </div>
        
                        <div class="card-body"> <!-- card-start -->
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Last Name</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>Position</th>
                                            <th>Term Duration</th>
                                            <th>Action</th>  
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>

                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>

                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>

                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>

                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>

                                        <tr>
                                            <td>asdasd</td>
                                            <td>asdad</td>
                                            <td>asd</td>
                                            <td>asdasd</td>
                                            <td>asdasd</td>
                                            <td style=" text-align: center;">
                                                <a href="#" class="btn btn-primary">View Profile</a>
                                                <a href="#" class="btn btn-danger">Edit Profile</a>
                                            </td>
  
                                        </tr>
                                        
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Last Name</th>
                                            <th>First Name</th>
                                            <th>Middle Name</th>
                                            <th>Position</th>
                                            <th>Term Duration</th>
                                            <th>Action</th>  
                                            
                                        </tr>
                                    </tfoot>
                        
                                                
                                </table>
                            </div>
                        </div>

                        
                    </div><!-- card-end -->
                
                </div>

            </div>
        
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script>
        document.addEventListener("DOMContentLoaded", function() {
            var rows = document.querySelectorAll(".clickable-row");
            rows.forEach(function(row) {
                row.addEventListener("click", function() {
                    window.location.href = this.dataset.href;
                });
            });
        });
    </script>

@endsection
  
