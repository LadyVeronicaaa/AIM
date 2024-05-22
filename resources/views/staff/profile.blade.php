@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Profile Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Staff</a></li>
              <li class="breadcrumb-item active">Profile </li>
            </ol>
          </div><!-- /.col -->
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


            <div class="col-md-12">
              <div class="card card-info">
                <div class="card-header"  style="background-color: maroon;">
                  <h3 class="card-title">Profile Page</h3>
                </div>

                <form action=" {{ url ('staff/profile/post')}}" method="post" class="form-horizontal" enctype="multipart/form-data">
                  {{ csrf_field() }}

                    @if(isset($workerProfile))
                        <input type="hidden" name="Worker_ID" value="{{ $workerProfile->Worker_ID }}">
                    @endif
                  <div class="card-body">
                    <!-- profile -->
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">User Image</label>
                      <div class="col-sm-10">
                        <input type="file" name="Profile_pic" class="form-control" >
                        @if(@$workerProfile->Profile_pic)
                          <img src="{{ url('public/citizen_img/'.@$workerProfile->Profile_pic) }}" width="200" height="200" class="img-circle elevation-0" />
                        @endif
                      </div>
                    </div>
                    <!-- name -->
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">User Name</label>
                      <div class="col-sm-10">
                        <input type="text" name="Username" class="form-control" placeholder="Enter your Name" value="{{ $workerProfile->Username }}">
                        
                      </div>
                    </div>
 
                    <!-- fname -->
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">First Name:</label>
                      <div class="col-sm-10">
                        <input type="text" name="Worker_fname" class="form-control" placeholder="Enter your Email" value="{{ $workerProfile->Worker_fname }}">
                      </div>
                    </div>

                    <!-- mname -->
                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Middle Name:</label>
                      <div class="col-sm-10">
                        <input type="text" name="Worker_mname" class="form-control" placeholder="Enter your Email" value="{{ $workerProfile->Worker_mname }}">
                      </div>
                    </div>

                     <!-- lname -->
                     <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Last Name:</label>
                      <div class="col-sm-10">
                        <input type="text" name="Worker_lname" class="form-control" placeholder="Enter your Email" value="{{ $workerProfile->Worker_lname }}">
                      </div>
                    </div>


                    <div class="form-group row">
                      <label class="col-sm-2 col-form-label">Change Password</label>
                      <div class="col-sm-10">
                        <input type="text" name="new_password" class="form-control" placeholder="Change Password" >
                      </div>
                    </div>
                  </div>

                 
                  <div class="card-footer">
                        <button type="submit" name="add_to_update" id="add_to_update" class="btn btn-info">
                            @if(isset($workerProfile) && $workerProfile->count() > 0)
                                Update
                            @else
                                Add
                            @endif
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
  
