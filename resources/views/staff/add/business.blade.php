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
              <li class="breadcrumb-item active">Business </li>
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

            @include('messages')
            <div class="col-md-12">
              <div class="card card-info">
                <div class="card-header" style="background-color: maroon;">
                  <h3 class="card-title"> Add Business </h3>
                </div>
                
                <form method= "post" action=" {{ url ('staff/add/business/post')}}">

                   {{ csrf_field() }}
                    <div class="row g-3 px-4 mt-4">
                    
                        <!-- Last Name -->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Business Name</span>
                                <input type="text" class="form-control"  name="Business_name" required>
                            </div>
                        </div>

                        <!-- Owners Name -->
                        <div class="col-md-12 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Owners Name</span>
                                <input type="text" class="form-control" name=" Owner_name">
                            </div>
                        </div>

                        <!-- date -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Date Established</span>
                                <input type="date" class="form-control"  name="Date_established" required>
                            </div>
                        </div>

                        <!-- status -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Status</span>
                                <select class="form-select form-control"  name="Business_Status">
                                    <option>Active</option>
                                    <option>Inactive</option>
                                </select>
                            </div>
                        </div>

                        <!-- address -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                            <span class="input-group-text">Address</span>
                            <input type="text" class="form-control"  name="Business_Address" placeholder="1234 Main St" required>
                            </div>
                        </div>

                        <!-- purok -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Purok</span>
                                <select class="form-select form-control"  name="Business_purok">
                                    <option value="Purok1">Purok 1</option>
                                    <option value="Purok2">Purok 2</option>
                                    <option value="Purok3">Purok 3</option>
                                    <!-- Add more options as needed -->
                                </select>
                            </div>
                        </div>

                        <!-- permit -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                            <span class="input-group-text">Business Permit</span>
                            <input type="text" class="form-control"  name="Business_permit" placeholder=" X 000000-0" required>
                            </div>
                        </div>

                        <!-- contact -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Contact No.</span>
                                <input type="text" class="form-control"  name="Contact_NO" placeholder=" Mobile/Telephone">
                            </div>
                        </div>
                        
                        <!-- organization -->
                        <div class="col-md-6 mb-3">
                            <div class="input-group">
                                <span class="input-group-text">Business Organization Form</span>
                                <select class="form-select form-control"  name="BOF">
                                    <option value="Services">Services</option>
                                    <option value="Merchandising">Merchandising</option>
                                    <option value="Manufacturing">Manufacturing</option>
                                    <option value="Hybrid">Hybrid</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                        
                        <!-- business type -->
                        <div class="col-xs-4 col-sm-4 col-md-6 mb-3">
                            <div class=" input-group">
                                <span class="input-group-text"> Religion</span>
                                <select class="form-select form-control"  name="Business_Type" class="form-control">
                                    <option value="Sole_Proprietorship">Sole Proprietorship</option>
                                    <option value="Partnership">Partnership </option>
                                    <option value="Corporation">Corporation</option>
                                    <option value="Cooperative">Cooperative</option>
                                    <option value="Limited_Liability_Company">Limited Liability Company</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                    </div>

                  <div class="px-4 mb-4">
                    <button type="submit"  class="btn btn-primary">
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
  
