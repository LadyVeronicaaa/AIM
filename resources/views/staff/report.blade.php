@extends('staff.layout.app')
@section('content')
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Reports</h1>
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
                        <h3 class="card-title"> Reports </h3>
                    </div>

                    <div class="row">
                        <div class="col-md-2">
                            <div class="tab-titles" style=" display: block; padding: 10px;">
                                <p class="tab-links " onclick="opentab('all')">All <span></span></p>                                   
                                <p class="tab-links active-link" onclick="opentab('bloodtype')">Bloodtype <span></span></p>
                                <p class="tab-links" onclick="opentab('employed')">Employed<span></span></p>
                                <p class="tab-links" onclick="opentab('enrolled')">Enrolled<span></span></p>
                                <p class="tab-links" onclick="opentab('gender')">Gender<span></span></p>  
                                <p class="tab-links" onclick="opentab('#minor')">Minor<span></span></p> 
                                <p class="tab-links" onclick="opentab('#pwd')">PWD<span></span></p>
                                <p class="tab-links" onclick="opentab('#voter')">Voter<span></span></p> 
                                <p class="tab-links" onclick="opentab('religion')">Religion<span></span></p>   
                                <p class="tab-links" onclick="opentab('residence')">Residence Type<span></span></p>  
                                <p class="tab-links" onclick="opentab('#senior')">Senior Citizen<span></span></p> 
                            </div>
                        </div>

                    
                        <div class="col-md-10 px-4 py-4">
                            <div class="tab-contents active-tab" id="bloodtype">
                                <div class="card card-info" >
                                    <div class="card-header" style="background-color: maroon;">
                                        <h3 class="card-title">Bloodtype </h3>
                                    </div>
                                    
                                    
                                
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <div class="table-responsive" >
                                            <table id="datatablesSimpleOne" class="table table-bordered table-hover">
                                            <thead >
                                                        <tr >
                                                            <th>Purok Name</th>
                                                            <th>A+</th>
                                                            <th>A-</th>
                                                            <th>B+</th>
                                                            <th>B-</th>
                                                            <th>AB+</th>
                                                            <th>AB-</th>
                                                            <th>O+</th>
                                                            <th>O-</th>
                                                            <th>Unknown</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>                   
                                                        <tr>
                                                            <td >Purok 1</td>
                                                            <td>15</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>2</td>
                                                            <th>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Purok 2</td>
                                                            <td>25</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>25</td>
                                                            <td>0</td>
                                                            <td>2</td>
                                                            <th>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Purok 3</td>
                                                            <td>5</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>52</td>
                                                            <th>0</td>
                                                        </tr>
                                                    </tbody>
                            
                                                    
                                            </table>
                                        </div>
                                    </div>
                                        
                                                
                                    
                                    <!-- /.card-body -->
                                </div>
                            </div>

                            <div class="tab-contents" id="employed">
                                <div class="card card-info" >
                                    <div class="card-header" style="background-color: maroon;">
                                        <h3 class="card-title">Employed </h3>
                                    </div>
                                    
                                    
                                
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <div class="table-responsive" >
                                            <table id="datatablesSimpleTwo" class="table table-bordered table-hover">
                                            <thead >
                                                        <tr >
                                                            <th>Purok Name</th>
                                                            <th>A+</th>
                                                            <th>A-</th>
                                                            <th>B+</th>
                                                            <th>B-</th>
                                                            <th>AB+</th>
                                                            <th>AB-</th>
                                                            <th>O+</th>
                                                            <th>O-</th>
                                                            <th>Unknown</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>                   
                                                        <tr>
                                                            <td >Purok 1</td>
                                                            <td>15</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>2</td>
                                                            <th>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Purok 2</td>
                                                            <td>25</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>25</td>
                                                            <td>0</td>
                                                            <td>2</td>
                                                            <th>0</td>
                                                        </tr>
                                                        <tr>
                                                            <td >Purok 3</td>
                                                            <td>5</td>
                                                            <td>10</td>
                                                            <th>0</th>
                                                            <td>25</td>
                                                            <td>2</td>
                                                            <td>0</td>
                                                            <td>0</td>
                                                            <td>52</td>
                                                            <th>0</td>
                                                        </tr>
                                                    </tbody>
                            
                                                    
                                            </table>
                                        </div>
                                    </div>
                                        
                                                
                                    
                                    <!-- /.card-body -->
                                </div>
                            </div>





                        </div>
                
                    
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
  
