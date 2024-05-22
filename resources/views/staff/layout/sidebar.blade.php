


  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="{{ url ('public/backend_auth/img/logo.png')}}" alt="AdminLTELogo" height="80" width="80">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-danger navbar-light" style="background-color: #69061b;">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button" style="color: #d9d7d7;"><i class="fas fa-bars"></i></a>
      </li>
      
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button" style="color: #d9d7d7;">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-danger elevation-4" style="background-color:  #4d0716 ;">
    <!-- Brand Logo -->
    <a href="{{ url ('staff/home')}}" class="brand-link">
      <img src="{{ url ('public/backend_auth/img/logo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Barangay (Name)</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            @if(@$workerProfile->Profile_pic)
              <img src="{{ url('public/citizen_img/'.@$workerProfile->Profile_pic) }}" class="img-circle elevation-2" alt="User Image">
            @endif
        </div>
        <div class="info">
          <a href="{{ url ('staff/profile')}}" class="d-block">{{ $workerProfile->Worker_fname }} {{ $workerProfile->Worker_lname }} <br> <small> Staff</small></a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
    

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          <!-- home -->
          <li class="nav-item">
            <a href="{{url ('staff/home')}}" class="nav-link  @if( Request::segment (2) == 'home') active  @endif">
              <i class="nav-icon fas fa-home"></i>
              <p>
                 Home
              </p>
            </a>
          </li>

          <!-- Barangay Staff -->
          <li class="nav-item " >
            <a href="#" class="nav-link ">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Baranagy Staff
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="./index.html" class="nav-link ">                 
                  <p>View Profile</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="./index2.html" class="nav-link">                 
                  <p>Change Password</p>
                </a>
              </li>
              
            </ul>
          </li>

          <!-- add -->
          <li class="nav-item">
            <a href="#" class="nav-link @if(Request::segment(2) == 'add') active @endif">
                <i class="nav-icon fas fa-plus"></i>
                <p>
                    Add
                    <i class="fas fa-angle-left right"></i>
                    <span class="badge badge-info right">5</span>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{ url('staff/add/business') }}" class="nav-link @if(Request::segment(3) == 'business') active @endif ml-4">
                        <p>Business</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/certif') }}" class="nav-link  @if(Request::segment(3) == 'certif') active @endif ml-4">
                        <p>Certification Template</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/citizen') }}" class="nav-link  @if(Request::segment(3) == 'citizen') active @endif ml-4">
                        <p>Citizen</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/feetype') }}" class="nav-link @if(Request::segment(3) == 'feetype') active @endif ml-4">
                        <p>Fee type</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/purok') }}" class="nav-link @if(Request::segment(3) == 'purok') active @endif ml-4">
                        <p>Purok</p>
                    </a>
                </li>
              </ul>
          </li>

          <!-- reports -->
          <li class="nav-item">
            <a href="{{url ('staff/report')}}" class="nav-link  @if( Request::segment (2) == 'report') active @endif">
              <i class="nav-icon fas fa-address-book"></i>
              <p>
                Reports
              </p>
            </a>
          </li>

          <!-- barangay case -->
          <li class="nav-item">
            <a href="{{url ('staff/brgy_case')}}" class="nav-link  @if( Request::segment (2) == 'brgy_case') active @endif">
              <i class="nav-icon fas fa-clipboard"></i>
              <p>
                  Barangay Case
              </p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="{{url ('login')}}" class="nav-link  @if( Request::segment (2) == 'dashboard') active @endif">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                  Logout
              </p>
            </a>
          </li>
        
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

