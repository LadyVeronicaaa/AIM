@extends('admin.layout.app')
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
              <li class="breadcrumb-item active">Citizen </li>
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
                  <h3 class="card-title"> Add Citizen </h3>
                </div>
                
                <form method= "post" action=" {{ url ('admin/add/citizen/post')}}" enctype="multipart/form-data">

                  {{ csrf_field() }}
                  <div class="row g-3 px-4 mt-4">

                  <div class="col-md-12 mb-3">
                        <div class="input-group">
                            <span class="input-group-text">Profile</span>
                            <input type="file" class="form-control" id="inputProfile" name="Citizen_profile" required>
                        </div>
                  </div>
                    
                    <!-- Last Name -->
                    <div class="col-md-4 mb-3">
                        <div class="input-group">
                            <span class="input-group-text">Last Name</span>
                            <input type="text" class="form-control" id="inputLastName" name="Citizen_lname" required>
                        </div>
                    </div>

                    <!-- First Name -->
                    <div class="col-md-4 mb-3">
                        <div class="input-group">
                            <span class="input-group-text">First Name</span>
                            <input type="text" class="form-control" id="inputFirstName" name="Citizen_fname" required>
                        </div>
                    </div>

                    <!-- Middle Name -->
                    <div class="col-md-4 mb-3">
                        <div class="input-group">
                            <span class="input-group-text">Middle Name</span>
                            <input type="text" class="form-control" id="inputMiddleName" name="Citizen_mname" required>
                        </div>
                    </div>

                    <!-- address -->
                    <div class="col-md-6 mb-3">
                        <div class="input-group">
                          <span class="input-group-text">Address</span>
                          <input type="text" class="form-control" id="inputAddress" name="Address" placeholder="1234 Main St" required>
                        </div>
                    </div>
                    <!-- purok -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Purok</span>
                        <select class="form-select form-control" id="inputPurok" name="Purok">
                            <option value="Purok1">Purok 1</option>
                            <option value="Purok2">Purok 2</option>
                            <option value="Purok3">Purok 3</option>
                            <!-- Add more options as needed -->
                        </select>
                      </div>
                    </div>

                    <!-- residence type -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Residence Type</span>
                        <select class="form-select form-control" id="inputResidenceType" name="Residence_Type">
                          <option value="Owned">Owned</option>
                          <option value="Leased">Leased</option>
                          <option value="Rented">Rented</option>
                          <option value="Boarder">Boarder</option>
                          <option value="Otherwise">Otherwise</option>
                        </select>
                      </div>
                    </div>

                    <!-- sex -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Sex</span>
                        <select class="form-select  form-control"  name="Sex">
                          <option value="Male">Male</option>
                          <option value="Female">Female</option>
                        </select>
                      </div>
                    </div>

                    <!-- status -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Status</span>
                          <select class="form-select form-control"  name="Marital_status">
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Widowed">Widowed</option>
                            <option value="Separated">Separated</option>
                        </select>
                      </div>
                    </div>

                    <!-- blood type -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Blood Type</span>
                        <select class="form-select form-control" name="BloodType">
                          <option value="A+">A+</option>
                          <option value="A-">A-</option>
                          <option value="B+">B+</option>
                          <option value="B-">B-</option>
                          <option value="AB+">AB+</option>
                          <option value="AB-">AB-</option>
                          <option value="O+">O+</option>
                          <option value="O-">O-</option>
                          <option value="unkonwn">unkonwn</option>
                        </select>
                      </div>
                    </div>

                    <!-- date -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Birthdate</span>
                        <input type="date" class="form-control"  name="Citizen_birthdate" required>
                      </div>
                    </div>

                    <!-- senior cetizen -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Senior Cetizen</span>
                        <select class="form-select form-control" name="Senior_member">
                          <option value="No">No</option>  
                          <option value="Yes">Yes</option>
                          
                        </select>
                      </div>
                    </div>

                    <!-- education -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Education</span>
                        <select class="form-select form-control" id="inputEducation" name="Education">
                          <option value="Elementary">Elementary</option>
                          <option value="Highschool">Highschool</option>
                          <option value="Vocational">Vocational</option>
                          <option value="College">College</option>
                        </select>
                      </div>
                    </div>

                    <!-- enrolled -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Currently Enrolled</span>
                        <select class="form-select form-control" id="inputEnrollmentStatus" name="Enrollment_status">
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                    </div>

                    <!-- occupation -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Occupation</span>
                        <input type="text" class="form-control" id="inputOccupation" name="Occupation" placeholder=" Occupation">
                      </div>
                    </div>
                    
                    <!-- currently employed -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Currently Employed</span>
                        <select class="form-select form-control" id="inputEmploymentStatus" name="Employment_status">
                          <option value="Yes">Yes</option>
                          <option value="No">No</option>
                        </select>
                      </div>
                    </div>

                    <!-- Mobile No. -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Mobile No.</span>
                        <input type="text" class="form-control" id="inputMobileNo" name="Mobile_no" placeholder="Cell no.">
                      </div>
                    </div>

                    <!-- tellephone no -->
                    <div class="col-md-6 mb-3">
                      <div class="input-group">
                        <span class="input-group-text">Tel. No.</span>
                        <input type="text" class="form-control" id="inputTelNo" name="Tel_no" placeholder="Tel. No">
                      </div>
                    </div>
                    
                    <!-- Religion -->
                    <div class="col-xs-4 col-sm-4 col-md-4 mb-3">
                      <div class=" input-group">
                        <span class="input-group-text"> Religion</span>
                        <select class="form-select form-control" id="religion" name="Religion" class="form-control">
                          <option>Roman Catholic</option>
                          <option>Islam</option>
                          <option>Protestant</option>
                          <option>Iglesia ni Cristo</option>
                          <option>Jesus Miracle Crusade International Ministry</option>
                          <option>Members Church of God International</option>
                          <option>Most Holy Church of God in Christ Jesus</option>
                          <option>Philippine Independent Church</option>
                          <option>Apostolic Catholic Church</option>
                          <option>Orthodoxy</option>
                          <option>The Kingdom of Jesus Christ the Name Above Every Name</option>
                          <option>Judaism</option>
                          <option>Hinduism</option>
                          <option>Atheism</option>
                          <option>Others</option>
                        </select>
                      </div>
                    </div>

                    <!-- Deceased -->
                    <div class="col-xs-4 col-sm-4 col-md-4 mb-3">
                      <div class=" input-group">
                        <span class="input-group-text"> Deceased</span>
                        <select class="form-select form-control" id="deceased" name="Deceased" class="form-control">
                          <option value="No">No</option>
                          <option value="Yes">Yes</option>
                        </select>
                      </div>
                    </div>
                    <!-- PWD -->
                    <div class="col-xs-4 col-sm-4 col-md-4 mb-3" >
                      <div class=" input-group">
                        <span class="input-group-text"> PWD</span>
                          <select class="form-select form-control" id="pwd"  name="Pwd" class="form-control">
                          <option value="N/A">N/A</option>
                          <option value="Blind">Blind</option>
                          <option value="Deaf">Deaf</option>
                          <option value="Mute">Mute</option>
                          <option value="Others">Others</option>
                        </select>
                      </div>
                    </div>

                    <!-- Voter -->
                    <div class="col-xs-3 col-sm-3 col-md-3 mb-3" >
                      <div class=" input-group">
                        <span class="input-group-text">Voter</span>
                        <select class="form-select form-control" id="is_voter"  name="Voter" class="form-control">
                          <option>Yes</option>
                          <option>No</option>
                        </select>
                      </div>
                    </div>

                    <!-- Voter's ID -->
                    <div id="div_voter_id" class="col-xs-4 col-sm-4 col-md-4 mb-3"  >
                      <div class=" input-group">
                        <span class="input-group-text"> Voter's ID</span>
                        <input id="voter_id" type="text" class="form-control" name="Voter_id" placeholder="Voter's ID">
                      </div>
                    </div>
                    <!-- Barangay ID< -->
                    <div class="col-xs-5 col-sm-5 col-md-5 mb-3">
                      <div class=" input-group">
                        <span class="input-group-text"> Barangay ID</span>
                        <input id="barangay_id" type="text" class="form-control" name="Barangay_id" placeholder="Barangay ID">
                      </div>
                    </div>

                  </div>

                  <div class="px-4 mb-4">
                    <button type="submit"  class="btn btn-primary">
                    Add 
                    </button>
                      <a href="{{ url ('admin/home')}}" class="btn btn-danger float-right"> Cancel</a>
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
  
