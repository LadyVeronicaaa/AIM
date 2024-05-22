@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Edit Page</h1>
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
          
            <!-- Small boxes (Stat box) -->
            
            <div class="row">

                <!-- citizen -->
                <div class="col-md-12 ">
                    <div class="card card-info">
                        <div class="card-header" style="background-color: maroon;"> 
                            <h3 class="card-title">Profile </h3>
                        </div>

                        
                        <div class="card-body"> <!-- card-start -->
                            <form action="{{url ('citzen/edit/' . $citizen_record->Citizen_ID)}}" method="post" class="form-horizontal" enctype="multipart/form-data">
                                
                                {{ csrf_field() }}

                                <div class="row pt-2">
                                    <div class="col-md-2 pt-4">
                                        <div>
                                            <input type="file" name="Citizen_profile" class="form-control"  >
                                            <img src="{{ url('public/citizen_img/'. $citizen_record->Citizen_profile) }}" style="width: 180px; height:190px; border-radius: 5%; margin-bottom:10px;" class="ml-2">
                                        </div>
                                       
                                </div>


                                <div class="col-md-10  py-4">

                                    <!-- last name -->
                                    <div class="bio-row col-md-4 mb-3">
                                        <i class="fa fa-user"></i> Last Name:
                                        <input type="text" class="form-control" id="inputLastName" name="Citizen_lname" value="{{$citizen_record->Citizen_lname}}">
                                    </div>

                                    <!-- first name -->
                                    <div class="bio-row col-md-4 mb-3">
                                        <i class="fa fa-user"></i> First Name:
                                        <input type="text" class="form-control" id="inputLastName" name="Citizen_fname" value="{{$citizen_record->Citizen_fname}}">
                                    </div>

                                    <!-- middle name -->
                                    <div class="bio-row col-md-4 mb-3">
                                        <i class="fa fa-user"></i> Midle Name:
                                        <input type="text" class="form-control"  name="Citizen_mname" value="{{$citizen_record->Citizen_mname}}">
                                    </div>

                                    <!-- address -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-road"></i> Address:
                                        <input type="text" class="form-control" name="Address" value="{{$citizen_record->Address}}">
                                    </div>

                                    

                                    <!-- purok -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-home"></i> Purok:
                                        <select class="form-select form-control"  name="Purok" value="{{$citizen_record->Purok}}">
                                            <option value="Purok1">Purok 1</option>
                                            <option value="Purok2">Purok 2</option>
                                            <option value="Purok3">Purok 3</option>
                                            <!-- Add more options as needed -->
                                        </select>
                                    </div>

                                    <!-- Residence Type -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-home"></i> Residence Type:
                                        <select class="form-select form-control" name="Residence_Type">
                                            <option value="Owned" {{ $citizen_record->Residence_Type == 'Owned' ? 'selected' : '' }}>Owned</option>
                                            <option value="Leased" {{ $citizen_record->Residence_Type == 'Leased' ? 'selected' : '' }}>Leased</option>
                                            <option value="Rented" {{ $citizen_record->Residence_Type == 'Rented' ? 'selected' : '' }}>Rented</option>
                                            <option value="Boarder" {{ $citizen_record->Residence_Type == 'Boarder' ? 'selected' : '' }}>Boarder</option>
                                            <option value="Otherwise" {{ $citizen_record->Residence_Type == 'Otherwise' ? 'selected' : '' }}>Otherwise</option>
                                        </select>
                                    </div>

                                    <!-- Sex -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-venus-mars"></i> Sex:
                                        <select class="form-select form-control" name="Sex">
                                            <option value="Male" {{ $citizen_record->Sex == 'Male' ? 'selected' : '' }}>Male</option>
                                            <option value="Female" {{ $citizen_record->Sex == 'Female' ? 'selected' : '' }}>Female</option>
                                        </select>
                                    </div>

                                    <!-- bloodtype -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-venus-mars"></i> Blood Type:
                                        <select class="form-select form-control"  name="BloodType">
                                            <option value="A+" {{ $citizen_record->BloodType == 'A+' ? 'selected' : '' }}>A+</option>
                                            <option value="A-" {{ $citizen_record->BloodType == 'A-' ? 'selected' : '' }}>A-</option>
                                            <option value="B+" {{ $citizen_record->BloodType == 'B+' ? 'selected' : '' }}>B+</option>
                                            <option value="B-" {{ $citizen_record->BloodType == 'B-' ? 'selected' : '' }}>B-</option>
                                            <option value="AB+" {{ $citizen_record->BloodType == 'AB+' ? 'selected' : '' }}>AB+</option>
                                            <option value="AB-" {{ $citizen_record->BloodType == 'AB-' ? 'selected' : '' }}>AB-</option>
                                            <option value="O+" {{ $citizen_record->BloodType == 'O+' ? 'selected' : '' }}>O+</option>
                                            <option value="O-" {{ $citizen_record->BloodType == 'O-' ? 'selected' : '' }}>O-</option>
                                            <option value="unknown" {{ $citizen_record->BloodType == 'unknown' ? 'selected' : '' }}>unknown</option>
                                        </select>
                                    </div>

                                    <!-- maritial status -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-heart"></i> Status:
                                        <select class="form-select form-control" name="Marital_status">
                                            <option value="Single" {{ $citizen_record->Marital_status == 'Single' ? 'selected' : '' }}>Single</option>
                                            <option value="Married" {{ $citizen_record->Marital_status == 'Married' ? 'selected' : '' }}>Married</option>
                                            <option value="Widowed" {{ $citizen_record->Marital_status == 'Widowed' ? 'selected' : '' }}>Widowed</option>
                                            <option value="Separated" {{ $citizen_record->Marital_status == 'Separated' ? 'selected' : '' }}>Separated</option>
                                        </select>
                                    </div>

                                    <!-- birthdate -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-regular fa-calendar-days"></i> Birthdate:
                                        <input type="date" class="form-control" name="Citizen_birthdate" value="{{$citizen_record->Citizen_birthdate}}">
                                    </div>

                                    <!-- senior member -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-user-check"></i> Senior Member:
                                        <select class="form-select form-control" name="Senior_member">
                                            <option value="No" {{ $citizen_record->Senior_member == 'No' ? 'selected' : '' }}>No</option>  
                                            <option value="Yes" {{ $citizen_record->Senior_member == 'Yes' ? 'selected' : '' }}>Yes</option>
                                        
                                        </select>
                                    </div>

                                    <!-- educatioin-->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-graduation-cap"></i> Educatioin:
                                        <select class="form-select form-control" name="Educatioin">
                                            <option value="Elementary" {{ $citizen_record->Educatioin == 'Elementary' ? 'selected' : '' }}>Elementary</option>  
                                            <option value="Highschool" {{ $citizen_record->Educatioin == 'Highschool' ? 'selected' : '' }}>Highschool</option>
                                            <option value="Vocational" {{ $citizen_record->Educatioin == 'Vocational' ? 'selected' : '' }}>Vocational</option>
                                            <option value="College" {{ $citizen_record->Educatioin == 'College' ? 'selected' : '' }}>College</option>
                                        
                                        </select>
                                    </div>

                                    <!-- Currently Enrolled-->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-user-check"></i> Currently Enrolled:
                                        <select class="form-select form-control" name="Enrollment_status">
                                            <option value="No" {{ $citizen_record->Enrollment_status == 'No' ? 'selected' : '' }}>No</option>  
                                            <option value="Yes" {{ $citizen_record->Enrollment_status == 'Yes' ? 'selected' : '' }}>Yes</option>
                                        </select>
                                    </div>

                                    <!-- occupation -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-suitcase"></i> Occupation:
                                        <input type="text" class="form-control" name="Occupation" value="{{$citizen_record->Occupation}}">
                                    </div>

                                    <!-- Currently Enrolled-->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-user-check"></i> Currently Employed:
                                        <select class="form-select form-control" name="Employment_status">
                                            <option value="No" {{ $citizen_record->Employment_status == 'No' ? 'selected' : '' }}>No</option>  
                                            <option value="Yes" {{ $citizen_record->Employment_status == 'Yes' ? 'selected' : '' }}>Yes</option>
                                        </select>
                                    </div>

                                    <!-- mobile no -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-mobile"></i> Mobile No.:
                                        <input type="text" class="form-control" name="Mobile_no" value="{{$citizen_record->Mobile_no}}">
                                    </div>

                                    <!-- tel no -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-mobile"></i> Tel No.:
                                        <input type="text" class="form-control" name="Tel_no" value="{{$citizen_record->Tel_no}}">
                                    </div>


                                    <!-- religion -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-hands-praying"></i> Religion:
                                        <select class="form-select form-control" name="Religion">
                                            <option value="Roman Catholic" {{ $citizen_record->Religion == 'Roman Catholic' ? 'selected' : '' }}>Roman Catholic</option>
                                            <option value="Islam" {{ $citizen_record->Religion == 'Islam' ? 'selected' : '' }}>Islam</option>
                                            <option value="Protestant" {{ $citizen_record->Religion == 'Protestant' ? 'selected' : '' }}>Protestant</option>
                                            <option value="Iglesia ni Cristo" {{ $citizen_record->Religion == 'Iglesia ni Cristo' ? 'selected' : '' }}>Iglesia ni Cristo</option>
                                            <option value="Jesus Miracle Crusade International Ministry" {{ $citizen_record->Religion == 'Jesus Miracle Crusade International Ministry' ? 'selected' : '' }}>Jesus Miracle Crusade International Ministry</option>
                                            <option value="Members Church of God International" {{ $citizen_record->Religion == 'Members Church of God International' ? 'selected' : '' }}>Members Church of God International</option>
                                            <option value="Most Holy Church of God in Christ Jesus" {{ $citizen_record->Religion == 'Most Holy Church of God in Christ Jesus' ? 'selected' : '' }}>Most Holy Church of God in Christ Jesus</option>
                                            <option value="Philippine Independent Church" {{ $citizen_record->Religion == 'Philippine Independent Church' ? 'selected' : '' }}>Philippine Independent Church</option>
                                            <option value="Apostolic Catholic Church" {{ $citizen_record->Religion == 'Apostolic Catholic Church' ? 'selected' : '' }}>Apostolic Catholic Church</option>
                                            <option value="Orthodoxy" {{ $citizen_record->Religion == 'Orthodoxy' ? 'selected' : '' }}>Orthodoxy</option>
                                            <option value="The Kingdom of Jesus Christ the Name Above Every Name" {{ $citizen_record->Religion == 'The Kingdom of Jesus Christ the Name Above Every Name' ? 'selected' : '' }}>The Kingdom of Jesus Christ the Name Above Every Name</option>
                                            <option value="Judaism" {{ $citizen_record->Religion == 'Judaism' ? 'selected' : '' }}>Judaism</option>
                                            <option value="Hinduism" {{ $citizen_record->Religion == 'Hinduism' ? 'selected' : '' }}>Hinduism</option>
                                            <option value="Atheism" {{ $citizen_record->Religion == 'Atheism' ? 'selected' : '' }}>Atheism</option>
                                            <option value="Others" {{ $citizen_record->Religion == 'Others' ? 'selected' : '' }}>Others</option>
                                        </select>
                                    </div>

                                    <!-- Deceased -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-user-check"></i> Deceased:
                                        <select class="form-select form-control" name="Deceased">
                                            <option value="No" {{ $citizen_record->Deceased == 'No' ? 'selected' : '' }}>No</option>  
                                            <option value="Yes" {{ $citizen_record->Deceased == 'Yes' ? 'selected' : '' }}>Yes</option>
                                        </select>
                                    </div>

                                    <!-- Pwd -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa fa-user-check"></i> Pwd:
                                        <select class="form-select form-control" name="Pwd">
                                            <option value="N/A" {{ $citizen_record->Pwd == 'N/A' ? 'selected' : '' }}>N/A</option>
                                            <option value="Blind" {{ $citizen_record->Pwd == 'Blind' ? 'selected' : '' }}>Blind</option>
                                            <option value="Deaf" {{ $citizen_record->Pwd == 'Deaf' ? 'selected' : '' }}>Deaf</option>
                                            <option value="Mute" {{ $citizen_record->Pwd == 'Mute' ? 'selected' : '' }}>Mute</option>
                                            <option value="Others" {{ $citizen_record->Pwd == 'Others' ? 'selected' : '' }}>Others</option>
                                        </select>
                                    </div>

                                    <!-- Voter -->
                                    <div class="bio-row col-md-4 mb-2 mb-3">
                                        <i class="fa-solid fa-user-check"></i> Voter:
                                        <select class="form-select form-control" name="Voter">
                                            <option value="No" {{ $citizen_record->Voter == 'No' ? 'selected' : '' }}>No</option>  
                                            <option value="Yes" {{ $citizen_record->Voter    == 'Yes' ? 'selected' : '' }}>Yes</option>
                                        </select>
                                    </div>

                                    <!-- vVoter Id -->
                                    <div class="bio-row col-md-4 mb-3">
                                        <i class="fa fa-id-card"></i> Voter Id:
                                        <input type="text" class="form-control"  name="Voter_id" value="{{$citizen_record->Voter_id}}">
                                    </div>

                                    <!-- Brangay Id -->
                                    <div class="bio-row col-md-4 mb-3">
                                        <i class="fa fa-id-card"></i> Barangay Id:
                                        <input type="text" class="form-control"  name="Barangay_id" value="{{$citizen_record->Barangay_id}}">
                                    </div>

                                    

                                    
                                    

                                </div>
                                <div class="col-md-12">
                                    <div class="d-flex justify-content-between">
                                        <button type="submit" class="btn btn-primary mr-5">Update</button> 
                                        <a href="{{ url('citizen', ['id' => $citizen_record->Citizen_ID]) }}" class="btn btn-danger">Cancel</a>
                                    </div>
                                </div>


                            </form>

                                
                        </div>

                        <style>
                            .bio-row {
                            width: 350px;
                            float: left;
                            margin-bottom: 0px;
                            padding:0 5px;
                            }

                            .bio-row p span {
                            width: 150px;
                            margin-right:5px;
                            display: inline;
                            }
                        </style>

                    </div><!-- card-end -->
                    
                </div>

            </div>
        
        </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 

@endsection
  
