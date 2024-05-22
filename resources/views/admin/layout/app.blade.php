<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Barangay | Name</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/fontawesome-free/css/all.min.css')}}">
  <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css')}}">
  <!-- iCheck -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
  <!-- JQVMap -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/jqvmap/jqvmap.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/dist/css/adminlte.min.css')}}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/daterangepicker/daterangepicker.css')}}">
  <!-- summernote -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/summernote/summernote-bs4.min.css')}}">
  <!-- table -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/datatables-responsive/css/responsive.bootstrap4.min.cssv')}}">
  <link rel="stylesheet" href="{{url ('public/backend_auth/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
  

  <link rel="icon" type="image/x-icon" href="{{ url ('public/backend_auth/img/logo.png')}}">

  <!-- home -->
  <link rel="stylesheet" href="{{url ('public/backend_auth/home.css')}}">
</head>
<body class="hold-transition sidebar-mini layout-fixed">


<div class="wrapper">


@include('admin.layout.sidebar')
@yield('content')
@include('admin.layout.footer')




  
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{url ('public/backend_auth/plugins/jquery/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{url ('public/backend_auth/plugins/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{url ('public/backend_auth/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- ChartJS -->
<script src="{{url ('public/backend_auth/plugins/chart.js/Chart.min.js')}}"></script>
<!-- Sparkline -->
<script src="{{url ('public/backend_auth/plugins/sparklines/sparkline.mjs')}}"></script>
<!-- JQVMap -->
<script src="{{url ('public/backend_auth/plugins/jqvmap/jquery.vmap.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/jqvmap/maps/jquery.vmap.usa.js')}}"></script>
<!-- jQuery Knob Chart -->
<script src="{{url ('public/backend_auth/plugins/jquery-knob/jquery.knob.min.js')}}"></script>
<!-- daterangepicker -->
<script src="{{url ('public/backend_auth/plugins/moment/moment.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/daterangepicker/daterangepicker.js')}}"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="{{url ('public/backend_auth/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js')}}"></script>
<!-- Summernote -->
<script src="{{url ('public/backend_auth/plugins/summernote/summernote-bs4.min.js')}}"></script>
<!-- overlayScrollbars -->
<script src="{{url ('public/backend_auth/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{url ('public/backend_auth/dist/js/adminlte.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<!-- <script src="{{url ('public/backend_auth/dist/js/demo.js')}}"></script> -->
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{url ('public/backend_auth/home.js')}}"></script>

<!-- table cj -->
<script src="{{url ('https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js')}}"></script>
<script src="{{url('https://cdn.jsdelivr.net/npm/simple-datatables@9.0.3/dist/umd/simple-datatables.min.js')}}"></script>
<script src="js/datatables-simple.js"></script>
<script src="{{url ('public/backend_auth/datatables.js')}}"></script>
<script src="{{url ('https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js')}}" crossorigin="anonymous"></script>

<!-- table built -->
<script src="{{url ('public/backend_auth/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/jszip/jszip.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/pdfmake/pdfmake.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/pdfmake/vfs_fonts.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{url ('public/backend_auth/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
<script src="{{url ('public/backend_auth/jquery-3.7.1.min')}}"></script>
<script>
  $(function () {
    $('#example1').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true, // Set to true to enable searching
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": true, // Set to true to enable searching
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>



</body>
</html>
