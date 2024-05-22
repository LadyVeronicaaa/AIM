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
                    <p class="tab-links active-link" onclick="opentab('profile')">Profile <span></span></p>
                    <p class="tab-links" onclick="opentab('transaction')">Transaction <span></span></p>
                    <p class="tab-links" onclick="opentab('fee')">Fee <span></span></p>
                    <p class="tab-links" onclick="opentab('complaint')">Complaints <span></span></p>
                    <p class="tab-links" onclick="opentab('notes')">Notes <span></span></p>                                   
                </div>
            </div>

            <!-- Small boxes (Stat box) -->
            @include('messages')
            <div class="row">

                <!-- citizen -->
                <div class="col-md-12 ">
                    <div class="tab-contents active-tab" id="profile">
                        <div class="card card-info">
                            <div class="card-header" style="background-color: maroon;"> 
                                <h3 class="card-title">Citizen Profile </h3>
                            </div>
            
                            <div class="card-body"> <!-- card-start -->
                                
                                <div class="row pt-2">
                                    <div class="col-md-3 ml-3 pt-4">
                                        <div>
                                            <img src="{{ url('public/citizen_img/'. $citizen_record->Citizen_profile) }}" style="width: 180px; height:190px; border-radius: 10%;" class="ml-2">
                                        </div>
                                        <p class="ml-2">{{ $citizen_record->Citizen_fname }} {{ $citizen_record->Citizen_mname }} {{ $citizen_record->Citizen_lname }}</p>
                                        <a href="{{ url('citizen/edit/' . $citizen_record->Citizen_ID) }}" class="btn btn-primary px-4 ml-3">Edit</a>
                                        <a onclick="return confirm('Are you sure you want to delete?')" href="{{ url('citzen/delete/' . $citizen_record->Citizen_ID) }}" class="btn btn-danger px-3 ml-2">Delete</a>
                                    </div>

                                    <div class="col-md-8  py-4">
                                        <div class="bio-row">
                                            <p><span><i class="fa fa-road"></i> Address: {{$citizen_record->Address}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa fa-house"></i> Purok: {{$citizen_record->Purok}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa fa-house"></i> Residence Type: {{$citizen_record->Residence_Type}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa fa-venus-mars"></i> Sex: {{$citizen_record->Sex}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa fa-droplet"></i> Blood Type: {{$citizen_record->BloodType}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-heart"></i> Status: {{$citizen_record->Marital_status}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-regular fa-calendar-days"></i> Birthdate: {{$citizen_record->Citizen_birthdate}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-user-check"></i> Senior Citizen: {{$citizen_record->Senior_member}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-graduation-cap"></i> Education: {{$citizen_record->Educatioin}}</p>
                                            </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-user-check"></i> Currently Enrolled: {{$citizen_record->Enrollment_status}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-suitcase"></i> Occupation: {{$citizen_record->Occupation}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-user-check"></i> Currently Employed: {{$citizen_record->Employment_status}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-mobile"></i> Mobile No.: {{$citizen_record->Mobile_no}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-phone"></i> Tel No.: {{$citizen_record->Tel_no}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-hands-praying"></i> Religion: {{$citizen_record->Religion}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fas fa-book-dead"></i> Deceased: {{$citizen_record->Deceased}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-user-check"></i> Pwd: {{$citizen_record->Pwd}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-solid fa-user-check"></i> Voter: {{$citizen_record->Voter}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-regular fa-id-card"></i> Voter id: {{$citizen_record->Voter_id}}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span><i class="fa-regular fa-id-card"></i> Barangay id: {{$citizen_record->Barangay_id}}</p>
                                        </div>
                                    </div>
                                    
                                </div>
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

                

                <!-- transaction -->
                <div class="col-md-12 ">
                    <div class="tab-contents" id="transaction">
                        <div class="card card-info" >
                            <div class="card-header" style="background-color: maroon;">
                                <h3 class="card-title">Transaction </h3>
                            </div>

                            <!-- /.card-header -->
                            <div class="card-body">
                            
                                <div class="row">
                                    
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-text">Search 10 Most Recent Transaction</span>
                                            <input id="search" onkeyup="load_fee(this.value)" type="text" class="form-control" name="search" placeholder="Transaction" required>
                                        </div>
                                        @if($transaction->isEmpty())
                                            <table class="table table-condensed table-hover">
                                                <td colspan="4">No data available for this citizen.</td>
                                            </table>
                                        @else
                                            <table class="table table-condensed table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Date</th>
                                                        <th>Time</th>
                                                        <th>Status</th>
                                                        <th>Purpose</th>
                                                    </tr>
                                                </thead>
                                                <tbody>                                      
                                                    @foreach ($transaction as $transaction)
                                                    <tr>
                                                        <td>{{ $transaction->Trans_date }}</td>
                                                        <td>{{ date("H:i", strtotime($transaction->Trans_time)) }}</td>
                                                        <td>{{ $transaction->Trans_status }}</td>
                                                        <td>{{ $transaction->Trans_purpose }}</td>
                                                    </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        @endif
                                    </div>
                                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
                                        
                                            <div id="table_Value" class="table-responsive">          
                                                <table class="table table-condensed table-hover">
                                                <thead>
                                                    <tr>
                                                    <th colspan="2">Request Forms</th>                      
                                                    </tr>
                                                </thead>                    
                                                <tbody>
                                                    <tr>
                                                    <td><a href="#" target="_self">Barangay Clearance</a></td>
                                                    </tr>
                                                    <tr>
                                                    <td><a href="#" target="_self">Certification</a></td>
                                                    </tr>
                                                </tbody>
                                                </table>
                                            
                                        </div>
                                    </div>
                                    
                                </div>


                            </div>
                                
                                        
                            
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>

                <!-- Fee -->
                <div class="col-md-12 ">
                    <div class="tab-contents" id="fee">
                        <div class="card card-info" >
                            <div class="card-header" style="background-color: maroon;">
                                <h3 class="card-title">Fees </h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
                                    
                                            
                                            <div class="input-group">
                                                <span class="input-group-text">Search 10 Most Recent Fees</span>
                                                <input id="search" onkeyup="load_fee(this.value)" type="text" class="form-control" name="search" placeholder="Fee Type" required>
                                            </div>
                                            

                                            <div class="">
                                                @if($fee->isEmpty())
                                                    <table class="table table-condensed table-hover">
                                                        <td colspan="4">No data available for this citizen.</td>
                                                    </table>
                                                @else
                                                    <table class="table table-condensed table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>Paid Date</th>
                                                                <th>Paid Time</th>
                                                                <th>Amount Paid</th>
                                                                <th>Type</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>                                                
                                                            @foreach($fee as $fee)
                                                                <tr>
                                                                    <td>{{ $fee->Paid_date }}</td>
                                                                    <td>{{ date("H:i", strtotime($fee->Paid_time)) }}</td>
                                                                    <td>{{ $fee->AmountPaid }}</td>
                                                                    <td>{{ $fee->FeeType }}</td>
                                                                </tr>  
                                                            @endforeach                                         
                                                        </tbody>
                                                    </table>
                                                @endif
                                            </div>
                                            
                                    
                                    </div>

                                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                                        <div class="card card-default">
                                            <div class="card-header">
                                                <h4>
                                                    Fees (As of {{ \Carbon\Carbon::now()->format('F j, Y') }})
                                                </h4>
                                            </div>

                                            <div class="card-body">
                                                <form method="post" role="form" autocomplete="" action="">
                                                    @csrf

                                                    <!-- Fee Type -->
                                                    <div class="input-group">
                                                        <span class="input-group-text">Fee Type</span>
                                                        <select id="fee_list" name="fee_list" class="form-control">
                                                        </select>
                                                    </div>
                                                    <br>

                                                    <!-- Remaining Balance -->
                                                    <div class="input-group">
                                                        <span class="input-group-text">Remaining Balance</span>
                                                        <input id="balance" type="text" class="form-control" name="balance" placeholder="" readonly>
                                                    </div>
                                                    <br>

                                                    <!-- Amount Paid -->
                                                    <div class="input-group">
                                                        <span class="input-group-text">Amount Paid</span>
                                                        <input id="amount" onkeyup="check_amount_paid(this.value)" type="number" min="0.01" step="0.01" class="form-control" name="amount" placeholder="" required>
                                                    </div>
                                                    <br>

                                                    <!-- Receipt No -->
                                                    <div class="input-group">
                                                        <span class="input-group-text">Receipt No.</span>
                                                        <input id="receipt" type="text" class="form-control" name="receipt" placeholder="" required>
                                                    </div>
                                                    <br>

                                                    <input id="Pay" disabled="true" name="submit" type="submit" onclick="return doCheckFee()" value="Pay" class="btn btn-primary" style="float: right; margin-left:10px; width:100px;">
                                                    <input name="clear" type="" onclick="" type="button" value="Clear" class="btn btn-success" style="float: right; width:100px;">
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>


                <!-- Complaint -->
                <div class="col-md-12 ">
                    <div class="tab-contents" id="complaint">
                        <div class="card card-info" >
                            <div class="card-header" style="background-color: maroon;">
                                <h3 class="card-title">Complaints </h3>
                            </div>

                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="row">

                                    <div class="input-group">
                                        <span class="input-group-text">Search 10 Most Recent Complaints</span>
                                        <input id="search" onkeyup="load_complaint(this.value)" type="text" class="form-control" name="search" placeholder="Search Concerned or Actions" required>
                                    </div>

                                    @if($complaint->isEmpty())
                                        <table class="table table-condensed table-hover">
                                            <td colspan="4">No data available for this citizen.</td>
                                        </table>
                                    @else
                                        <table class="table table-condensed table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Complainant</th>
                                                    <th>Complainee</th>
                                                    <th>FeeType</th>
                                                    <th>Action Taken</th>
                                                    <th>Complaint Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach($complaint as $complaint)
                                                <tr>
                                                    <td>{{ $complaint->Complainant }}</td>
                                                    <td>{{ $complaint->Complainee }}</td>
                                                    <td>{{ $complaint->FeeType }}</td>
                                                    <td>{{ $complaint->Actions_taken }}</td>
                                                    <td>{{ $complaint->Complaints_status }}</td>
                                                </tr>                                                                                             
                                                @endforeach
                                            </tbody>
                                        </table>
                                    @endif
                                    
        
                                </div>
                            </div>
                                
                            <!-- /.card-body -->
                        </div>
                    </div>
                </div>

                <!-- notes -->
                <div class="col-md-12 ">
                    <div class="tab-contents" id="notes">
                        <div class="card card-info" >
                            <div class="card-header" style="background-color: maroon;">
                                <h3 class="card-title">Notes </h3>
                            </div>

                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="row">

                                    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">

                                        <div class="input-group">
                                            <span class="input-group-text">Search 10 Most Recent Notes</span>
                                            <input id="search" onkeyup="load_note(this.value)" type="text" class="form-control" name="search" placeholder="Note" required>
                                        </div>

                                        <div id="" class="">          
                                            <table class="table table-condensed table-hover">
                                                <thead>
                                                    <tr>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Note</th>
                                                    </tr>
                                                </thead>                    
                                                <tbody>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-sm-5 col-md-5 col-lg-5">
                                        <br>            
                                        <div class="card mb-4">
                                            <div class="card-header">
                                                <h4>Add Note</h4>
                                            </div>
                                           
                                            <form method="post" role="form" autocomplete="off" readonly onfocus="this.removeAttribute('readonly');" action="?">

                                                <textarea id="note_text" name="note_text" class="form-control" rows="10" required></textarea>
                                                <br>
                                                
                                                <input id="Pay" name="submit" type="submit" onclick="return doCheckNote()" value="Submit" class="btn btn-primary" style="float: right; width:100px;">
                                            </form>
                                            
                                        </div>
                                    </div>
            
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
 

@endsection
  
