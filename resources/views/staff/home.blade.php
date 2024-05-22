@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Home Page</h1>
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
            <div class="titles">
                <div class="tab-titles">
                    <p class="tab-links active-link" onclick="opentab('citizen')">Citizen <span></span></p>
                    <p class="tab-links" onclick="opentab('business')">Business <span></span></p>                                     
                </div>
            </div>

            @include('messages')
            <!-- Small boxes (Stat box) -->
            <div class="row">

                <!-- citizen -->
                <div class="col-md-12 ">
                    <div class="tab-contents active-tab" id="citizen">
                        <div class="card card-info">
                            <div class="card-header" style="background-color: maroon;"> 
                                <h3 class="card-title">Citizen </h3>
                            </div>
            
                            <div class="card-body"> <!-- card-start -->
                                <div class="table-responsive">
                                    <table id="datatablesSimpleOne" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Last Name</th>
                                                <th>First Name</th>
                                                <th>Middle Name</th>
                                                <th>Purok</th>
                                                <th>Gender</th>
                                                <th>Residence Type</th>
                                                <th>Senior Citizen</th>
                                                <th>Status</th>  
                                                <th>Birthdate</th>  
                                                <th>Blood Type</th>  
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($citizen_record as $value)
                                            <tr class="clickable-row" data-href="{{ url('citizen', ['id' => $value->Citizen_ID]) }}">
                                                <td>{{$value->Citizen_lname}}</td>
                                                <td>{{$value->Citizen_fname}}</td>
                                                <td>{{$value->Citizen_mname}}</td>
                                                <td>{{$value->Purok}}</td>
                                                <td>{{$value->Sex}}</td>
                                                <td>{{$value->Residence_Type}}</td>
                                                <td>{{$value->Senior_member}}</td>
                                                <td>{{$value->Marital_status}}</td>
                                                <td>{{$value->Citizen_birthdate}}</td>
                                                <td>{{$value->BloodType}}</td>
                                            </tr>
                                            @endforeach     
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Last Name</th>
                                                <th>First Name</th>
                                                <th>Middle Name</th>
                                                <th>Purok</th>
                                                <th>Gender</th>
                                                <th>Residence Type</th>
                                                <th>Senior Citizen</th>
                                                <th>Status</th> 
                                                <th>Birthdate</th>
                                                <th>Blood Type</th>  
                                                
                                            </tr>
                                        </tfoot>
                            
                                                    
                                    </table>
                                </div>
                            </div>

                            
                        </div><!-- card-end -->
                    </div>
                </div>

                

                <!-- business -->
                <div class="col-md-12 ">
                    <div class="tab-contents" id="business">
                        <div class="card card-info" >
                            <div class="card-header" style="background-color: maroon;">
                                <h3 class="card-title">Business </h3>
                            </div>
                            
                            
                        
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <div class="table-responsive" >
                                        <table id="datatablesSimpleTwo" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Business Name</th>
                                                    <th>Owner Name</th>
                                                    <th>Date Established</th>
                                                    <th>Status</th>
                                                    <th>Address</th>
                                                    <th>Purok</th>
                                                    <th>Contact NO.</th>  
                                                </tr>
                                            </thead>
                                            <tbody>
                                                 @foreach ($business_record as $value)
                                                <tr>
                                                <td>{{$value->Business_name}}</td>
                                                <td>{{$value->Owner_name}}</td>
                                                <td>{{$value->Date_established}}</td>
                                                <td>{{$value->Business_Status}}</td>
                                                <td>{{$value->Business_Address}}</td>
                                                <td>{{$value->Business_purok}}</td>
                                                <td>{{$value->Contact_NO}}</td>
                                                </tr>
                                                @endforeach  
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>Business Name</th>
                                                    <th>Owner Name</th>
                                                    <th>Date Established</th>
                                                    <th>Status</th>
                                                    <th>Address</th>
                                                    <th>Purok</th>
                                                    <th>Contact NO.</th>  
                                                </tr>
                                            </tfoot>
                        
                                                
                                        </table>
                                    </div>
                                </div>
                                
                                        
                            
                            <!-- /.card-body -->
                        </div>
                    </div>
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
  
