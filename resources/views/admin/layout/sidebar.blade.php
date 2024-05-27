


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
    <a href="{{ url ('admin/home')}}" class="brand-link">
      <img src="{{ url ('public/backend_auth/img/logo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Barangay (Name)</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ url ('public/backend_auth/img/a_me.png')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Amor Lee <br> <small> Admin</small></a>
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
            <a href="{{url ('admin/home')}}" class="nav-link  @if( Request::segment (2) == 'home') active  @endif">
              <i class="nav-icon fas fa-home"></i>
              <p>
                 Home
              </p>
            </a>
          </li>

          <!-- Barangay Staff -->
          <li class="nav-item">
            <a href="{{url ('admin/manage')}}" class="nav-link  @if( Request::segment (2) == 'manage') active  @endif">
              <i class="nav-icon fas fa-user"></i>
              <p>
                 Admin Management
              </p>
            </a>
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
                    <a href="{{ url('admin/add/admin') }}" class="nav-link @if(Request::segment(3) == 'admin') active @endif ml-4">
                        <p>Admin</p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="{{ url('admin/add/citizen') }}" class="nav-link  @if(Request::segment(3) == 'citizen') active @endif ml-4">
                        <p>Citizen</p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="{{ url('staff/add/purok') }}" class="nav-link @if(Request::segment(3) == 'purok') active @endif ml-4">
                        <p>Purok</p>
                    </a>
                </li>
              </ul>
          </li>

          <!-- barangay records -->
          <li class="nav-item">
            <a href="#" class="nav-link @if(Request::segment(2) == '') active @endif">
                <i class="nav-icon fas fa-clipboard"></i>
                <p>
                    Barangay Records
                    <i class="fas fa-angle-left right"></i>
                    <span class="badge badge-info right">3</span>
                </p>
            </a>
            <ul class="nav nav-treeview">
                <li class="nav-item">
                    <a href="{{ url('staff/add/business') }}" class="nav-link @if(Request::segment(3) == 'business') active @endif ml-4">
                        <p>Archive</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/certif') }}" class="nav-link  @if(Request::segment(3) == 'certif') active @endif ml-4">
                        <p>Notes</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ url('staff/add/citizen') }}" class="nav-link  @if(Request::segment(3) == 'citizen') active @endif ml-4">
                        <p>Logs</p>
                    </a>
                </li>
                
              </ul>
          </li>

           <!-- Logout -->
           <li class="nav-item">
              <a href="{{ url('login') }}" class="nav-link">
                  <i class="nav-icon fas fa-sign-out-alt"></i>
                  <p>
                      Logout
                  </p>
              </a>
          </li>

<!--       
          <li class="nav-item">
            <a href="{{url ('login')}}" class="nav-link  @if( Request::segment (2) == 'dashboard') active @endif">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                  Logout
              </p>
            </a>
          </li>
         -->
        </ul>
      </nav>
      <!-- /.sidebar-menu -->

      
    </div>
    <!-- /.sidebar -->
  </aside>

  
