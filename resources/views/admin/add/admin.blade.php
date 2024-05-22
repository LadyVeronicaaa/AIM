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
                        <li class="breadcrumb-item active">Admin</li>
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
                            <h3 class="card-title">Add Admin</h3>
                        </div>

                        <form method="post" action="{{ url('admin/add/admin/post') }}" enctype="multipart/form-data">
                            {{ csrf_field() }}
                            <div class="row g-3 px-5 mt-4">

                                <div class="col-md-12 mb-3">
                                    <div class="input-group">
                                        <span class="input-group-text">Search</span>
                                        <input type="text" class="form-control" id="searchCitizen" name="searchCitizen" required>
                                    </div>
                                    <ul id="searchCitizenList"></ul>
                                </div>


                              <!-- Last Name -->
                              <div class="col-md-4 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Last Name</span>
                                      <input type="text" class="form-control" id="inputLastName" name="Worker_lname" required>
                                  </div>
                              </div>

                              <!-- First Name -->
                              <div class="col-md-4 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">First Name</span>
                                      <input type="text" class="form-control" id="inputFirstName" name="Worker_fname" required>
                                  </div>
                              </div>

                              <!-- Middle Name -->
                              <div class="col-md-4 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Middle Name</span>
                                      <input type="text" class="form-control" id="inputMiddleName" name="Worker_mname" required>
                                  </div>
                              </div>

                              <!-- Access Level -->
                              <div class="col-md-6 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Access Level</span>
                                      <select class="form-select form-control" name="Accesslvl">
                                          <option value="0">Barangay Staff</option>
                                          <option value="1">Barangay Admin</option>
                                      </select>
                                  </div>
                              </div>

                              
                              <!-- Username -->
                              <div class="col-md-6 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Username</span>
                                      <input type="text" class="form-control" id="inputUsername" name="Username">
                                  </div>
                              </div>

                              <!-- Password -->
                              <div class="col-md-6 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Password</span>
                                      <input type="password" class="form-control" name="password">
                                  </div>
                              </div>

                              <!-- Confirm Password -->
                              <div class="col-md-6 mb-3">
                                  <div class="input-group">
                                      <span class="input-group-text">Confirm Password</span>
                                      <input type="password" class="form-control" name="confirm_password">
                                  </div>
                              </div>
                            </div>

                            <input type="hidden" name="status" value="1">

                            <div class="px-4 mb-4">
                                <button type="submit" class="btn btn-primary">
                                    Add
                                </button>
                                <a href="{{ url('admin/home') }}" class="btn btn-danger float-right">Cancel</a>
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
<script>
document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('searchCitizen');
    const lastNameInput = document.getElementById('inputLastName');
    const firstNameInput = document.getElementById('inputFirstName');
    const middleNameInput = document.getElementById('inputMiddleName');

    searchInput.addEventListener('input', function() {
        const searchText = this.value.toLowerCase().trim();
        if (searchText.length >= 2) {
            $.ajax({
                url: "{{ route('searchCitizen') }}",
                method: "GET",
                data: { query: searchText },
                success: function(response) {
                    const filteredRecords = response;
                    if (filteredRecords.length === 1) {
                        lastNameInput.value = filteredRecords[0].Citizen_lname;
                        firstNameInput.value = filteredRecords[0].Citizen_fname;
                        middleNameInput.value = filteredRecords[0].Citizen_mname;
                    } else {
                        lastNameInput.value = '';
                        firstNameInput.value = '';
                        middleNameInput.value = '';
                    }
                },
                error: function() {
                    lastNameInput.value = '';
                    firstNameInput.value = '';
                    middleNameInput.value = '';
                }
            });
        } else {
            lastNameInput.value = '';
            firstNameInput.value = '';
            middleNameInput.value = '';
        }
    });
});
</script>


@endsection
