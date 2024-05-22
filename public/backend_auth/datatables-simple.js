window.addEventListener('DOMContentLoaded', event => {
    // 1. Initialize Simple-DataTables for the first table ('Citizen' table)
    const datatablesSimpleOne = document.getElementById('datatablesSimpleOne');
    if (datatablesSimpleOne) {
        const dataTableOne = new simpleDatatables.DataTable(datatablesSimpleOne);

        // Adding click event listener to table rows in the first table
        datatablesSimpleOne.querySelector('tbody').addEventListener('click', event => {
            const clickedRow = event.target.closest('tr');
            if (clickedRow) {
                console.log('1. First Table Row Clicked');
                // Add your custom logic here for the first table row click event
            }
        });
    }

    // 2. Initialize Simple-DataTables for the second table ('Business' table)
    const datatablesSimpleTwo = document.getElementById('datatablesSimpleTwo');
    if (datatablesSimpleTwo) {
        const dataTableTwo = new simpleDatatables.DataTable(datatablesSimpleTwo);

        // Adding click event listener to table rows in the second table
        datatablesSimpleTwo.querySelector('tbody').addEventListener('click', event => {
            const clickedRow = event.target.closest('tr');
            if (clickedRow) {
                console.log('2. Second Table Row Clicked');
                // Add your custom logic here for the second table row click event
            }
        });
    }

    // Repeat the pattern for additional Simple-DataTables and event listeners

    // 3. Initialize Simple-DataTables for the third table
    const datatablesSimpleThree = document.getElementById('datatablesSimpleThree');
    if (datatablesSimpleThree) {
        const dataTableThree = new simpleDatatables.DataTable(datatablesSimpleThree);

        // Adding click event listener to table rows in the third table
        datatablesSimpleThree.querySelector('tbody').addEventListener('click', event => {
            const clickedRow = event.target.closest('tr');
            if (clickedRow) {
                console.log('3. Third Table Row Clicked');
                // Add your custom logic here for the third table row click event
            }
        });
    }

    // 4. Initialize Simple-DataTables for the fourth table
    const datatablesSimpleFour = document.getElementById('datatablesSimpleFour');
    if (datatablesSimpleFour) {
        const dataTableFour = new simpleDatatables.DataTable(datatablesSimpleFour);

        // Adding click event listener to table rows in the fourth table
        datatablesSimpleFour.querySelector('tbody').addEventListener('click', event => {
            const clickedRow = event.target.closest('tr');
            if (clickedRow) {
                console.log('4. Fourth Table Row Clicked');
                // Add your custom logic here for the fourth table row click event
            }
        });
    }
});


