$(document).ready(function() {
  // 1. Initialize DataTable for the first table
  $('#datatablesSimpleOne').DataTable();

  // 2. Adding click event listener to table rows in the first table
  $('#datatablesSimpleOne tbody').on('click', 'tr', function () {
      console.log('1. First Table Row Clicked');
      // Add your custom logic here for the first table row click event
  });

  // 3. Initialize DataTable for the second table
  $('#datatablesSimpleTwo').DataTable();

  // 4. Adding click event listener to table rows in the second table
  $('#datatablesSimpleTwo tbody').on('click', 'tr', function () {
      console.log('2. Second Table Row Clicked');
      // Add your custom logic here for the second table row click event
  });

  // Repeat the pattern for additional DataTables and event listeners

  // 5. Initialize DataTable for the third table
  $('#datatablesSimpleThree').DataTable();

  // 6. Adding click event listener to table rows in the third table
  $('#datatablesSimpleThree tbody').on('click', 'tr', function () {
      console.log('3. Third Table Row Clicked');
      // Add your custom logic here for the third table row click event
  });

  // 7. Initialize DataTable for the fourth table
  $('#datatablesSimpleFour').DataTable();

  // 8. Adding click event listener to table rows in the fourth table
  $('#datatablesSimpleFour tbody').on('click', 'tr', function () {
      console.log('4. Fourth Table Row Clicked');
      // Add your custom logic here for the fourth table row click event
  });
});
