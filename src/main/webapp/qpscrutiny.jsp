<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Font Google -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <!-- bootstrap == -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.css">

    <!-- css -->
    <link rel="stylesheet" href="./assets/css/navBar.css">

    <!-- script -->
    <script src="./assets/js/dashboard.js"></script>
</head>


<body>
    <style>
        * {
            overflow-y: hidden;
        }
        
        .dashboard-section {
            /* justify-content: space-between; */
            margin-right: 0px !important;
        }
        
        .qp-setter-section {
            height: 100vh;
            overflow-y: scroll;
            /* margin: 1px !important; */
            padding: 50px 8px;
        }
        
        .nav-section div:nth-child(2) i:hover::after {
            z-index: 1;
            content: 'QP Setting';
            font-family: 'Poppins', 'sans-serif';
            font-weight: 500;
            padding: 10px 20px;
            width: 10rem;
            top: 0px;
            left: 45px;
            color: #000;
            position: absolute;
            background-color: #ffe5b4;
            border-top-right-radius: 50px;
            border-bottom-right-radius: 50px;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
        }
        
        .nav-section div:nth-child(3) i:hover::after {
            z-index: 1;
            content: 'QP Scrutiny';
            font-family: 'Poppins', 'sans-serif';
            font-weight: 500;
            padding: 10px 20px;
            width: 14rem;
            top: 0px;
            left: 45px;
            color: #000;
            position: absolute;
            background-color: #ffe5b4;
            border-top-right-radius: 50px;
            border-bottom-right-radius: 50px;
            border-top-left-radius: 20px;
            border-bottom-left-radius: 20px;
        }
    </style>
    <div class="overflow-hidden">
        <div class="dashboard-section row">
            <div class="col-lg-1 light-back bg-light py-lg-4 norightpadding left-section">
                <div class="logo mx-4 row justify-content-center align-items-center py-3">
                    <img src="./assets/images/logo.png" alt="" width="50%">
                </div>
                <div class="nav-section">
                    <div><a href="./dashboard.html" style="color: #000;"><i class="fas fa-bars my-4"
                                data-page="section-1"></i></a></div>
                    <div><a href="#" style="color: #000;"><i class="far fa-copy my-4" data-page="section-3"></i></a></div>
                    <div><a href=""><i class="far fa-clipboard my-4 active-icon" data-page="section-4"></i></a>
                    </div>
                    <div><a href="./resetPass.html" style="color: #000;"><i class="fas fa-fingerprint my-4"
                                data-page="section-5"></i></a></div>
                </div>
                <div class="log-out align-items-end">
                    <div><i class="fas fa-sign-out-alt"></i></div>
                </div>
            </div>
            <!-- QP Setting Section -->

            <style>
                th,
                td,
                tr {
                    border: 2px solid rgb(83, 81, 81);
                }
                
                .tg {
                    border-collapse: collapse;
                    border-spacing: 0;
                }
                
                .tg td {
                    border-color: black;
                    border-style: solid;
                    border-width: 1px;
                    font-family: Arial, sans-serif;
                    font-size: 14px;
                    overflow: hidden;
                    padding: 10px 5px;
                    word-break: normal;
                }
                
                .tg th {
                    border-color: black;
                    border-style: solid;
                    border-width: 1px;
                    font-family: Arial, sans-serif;
                    font-size: 14px;
                    font-weight: normal;
                    overflow: hidden;
                    padding: 10px 5px;
                    word-break: normal;
                }
                
                .tg .tg-0pky {
                    border-color: inherit;
                    text-align: left;
                    vertical-align: top
                }
                
                .tg .tg-0lax {
                    text-align: left;
                    vertical-align: top
                }
            </style>

            <div class="col-lg-5 qp-setter-section section-3">
                <div class="text-center">
                    <div class="row text-center w-100">
                        <div class="col-2"><img src="./assets/images/SKI (3).png" width="70%" alt=""></div>
                        <div class="col-8">
                            <h4>SRI KRISHNA COLLEGE OF TECHNOLOGY</h4>
                            <h6>An Autonomous Institution</h6>
                            <p>(Approved by AICTE and affiliated to Anna University)</p>
                            <h6>Coimbatore, Tamil Nadu</h6>
                        </div>
                        <div class="col-2"><img src="./assets/images/skct_logo (3).png" width="70%" alt=""></div>
                    </div>

                    <table class="w-100 co_outcomes">
                        <tr>
                            <td colspan="3">COURSE OUTCOMES</td>
                        </tr>
                    </table>
                    <form method="post" action="qpsaver">
                        <table class="table">
                            <thead>
                                <tr class="text-center border b-4">

                                    <th scope="col" colspan="2" class=" " style="width: 73%;">PART A (09 x 02 = 18 Marks)
                                        <div>Answer All Questions
                                        </div>
                                    </th>
                                    <th scope="col" class="" style="width: 9%;">RBT</th>
                                    <th scope="col" class="" style="width: 9%;">CO</th>
                                    <th scope="col" class="" style="width: 9%;">MARKS</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td scope="col" style="width: 9%;">1</td>
                                    <td scope="col" style="width: 73%;">
                                        <textarea name="q1" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q1rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q1co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>

                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">2</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q2" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q2rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q2co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">3</td>
                                    <td scope="col" style="width: 73%;">
                                        <textarea name="q3" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">

                                        <select class="form-control shadow-none" name="q3rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>

                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q3co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>

                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">4</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q4" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q4rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q4co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">5</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q5" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q5rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q5co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">6</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q6" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q6rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q6co" id="" class="form-control" disabled>
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">7</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q7" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;"><select class="form-control shadow-none" name="q7rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q7co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">8</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q8" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q8rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q8co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">9</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q9" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q9rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q9co" id="" class="form-control" disabled>
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                            </tbody>

                        </table>
                </div>
                <div class="text-center">

                    <table class="table">
                        <thead>
                            <tr class="text-center border b-4">
                                <th scope="col" colspan="3" class=" " style="width: 73%;">PART B (16 x 02 = 32 Marks)
                                    <div>Answer All Questions
                                    </div>
                                </th>
                                <th scope="col" class="" style="width: 9%;">RBT</th>
                                <th scope="col" class="" style="width: 9%;">CO</th>
                                <th scope="col" class="" style="width: 9%;">MARKS</th>
                            </tr>
                        </thead>
                        <tbody>




                            <tr class="question-16-1">
                                <td scope="col" style="width: 6%;">1</td>
                                <td scope="col" style="width: 6%;">i</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s1" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s1rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s1co" id="" class="form-control" disabled>
                                          <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-1-selector" disabled>
                                            <option value="16">16</option>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-2">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">ii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s2" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s2rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s2co" id="" class="form-control" disabled>
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-2-selector" disabled>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-21">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s3" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s3rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s3co" id="" class="form-control" disabled>
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-21-selector" disabled>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-22">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iv</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s4" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s4rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s4co" id="" class="form-control" disabled>
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-22-selector" disabled>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-3">
                                <td scope="col" style="width: 6%;">2</td>
                                <td scope="col" style="width: 6%;">i</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s1" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s1rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s1co" id="" class="form-control" disabled>
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-3-selector" disabled>
                                            <option value="16">16</option>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-4">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">ii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s2" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s2rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s2co" id="" class="form-control" disabled>
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-4-selector" disabled>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-41">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s3" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s3rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s3co" id="" class="form-control" disabled>
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-41-selector" disabled>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-42">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iv</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s4" id="" cols="" class="form-control shadow-none" rows="1" disabled></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s4rbt" id="RBT" disabled>
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s4co" id="" class="form-control" disabled>
                                          <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-42-selector" disabled>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                        </tbody>


                    </table>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 qp-setter-section section-3">
                <div class="text-center">
                    <div class="row text-center w-100">
                        <div class="col-2"><img src="./assets/images/SKI (3).png" width="70%" alt=""></div>
                        <div class="col-8">
                            <h4>SRI KRISHNA COLLEGE OF TECHNOLOGY</h4>
                            <h6>An Autonomous Institution</h6>
                            <p>(Approved by AICTE and affiliated to Anna University)</p>
                            <h6>Coimbatore, Tamil Nadu</h6>
                        </div>
                        <div class="col-2"><img src="./assets/images/skct_logo (3).png" width="70%" alt=""></div>
                    </div>

                    <table class="w-100 co_outcomes">
                        <tr>
                            <td colspan="3">COURSE OUTCOMES</td>
                        </tr>
                    </table>
                    <form method="post" action="qpsaver">
                        <table class="table">
                            <thead>
                                <tr class="text-center border b-4">

                                    <th scope="col" colspan="2" class=" " style="width: 73%;">PART A (09 x 02 = 18 Marks)
                                        <div>Answer All Questions
                                        </div>
                                    </th>
                                    <th scope="col" class="" style="width: 9%;">RBT</th>
                                    <th scope="col" class="" style="width: 9%;">CO</th>
                                    <th scope="col" class="" style="width: 9%;">MARKS</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td scope="col" style="width: 9%;">1</td>
                                    <td scope="col" style="width: 73%;">
                                        <textarea name="q1" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q1rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q1co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>

                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">2</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q2" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q2rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q2co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">3</td>
                                    <td scope="col" style="width: 73%;">
                                        <textarea name="q3" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">

                                        <select class="form-control shadow-none" name="q3rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>

                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q3co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>

                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">4</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q4" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q4rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q4co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">5</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q5" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q5rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q5co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">6</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q6" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q6rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q6co" id="" class="form-control">
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">7</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q7" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;"><select class="form-control shadow-none" name="q7rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q7co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">8</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q8" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q8rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q8co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                                <tr>
                                    <td scope="col" style="width: 9%;">9</td>
                                    <td scope="col" style="width:73%;">
                                        <textarea name="q9" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select class="form-control shadow-none" name="q9rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                    </td>
                                    <td scope="col" style="width: 9%;">
                                        <select name="q9co" id="" class="form-control">
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                    </td>
                                    <td style="position: relative; top: 6px;">2</td>
                                </tr>
                            </tbody>

                        </table>
                </div>
                <div class="text-center">

                    <table class="table">
                        <thead>
                            <tr class="text-center border b-4">
                                <th scope="col" colspan="3" class=" " style="width: 73%;">PART B (16 x 02 = 32 Marks)
                                    <div>Answer All Questions
                                    </div>
                                </th>
                                <th scope="col" class="" style="width: 9%;">RBT</th>
                                <th scope="col" class="" style="width: 9%;">CO</th>
                                <th scope="col" class="" style="width: 9%;">MARKS</th>
                            </tr>
                        </thead>
                        <tbody>




                            <tr class="question-16-1">
                                <td scope="col" style="width: 6%;">1</td>
                                <td scope="col" style="width: 6%;">i</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s1" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s1rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s1co" id="" class="form-control">
                                          <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-1-selector">
                                            <option value="16">16</option>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-2">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">ii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s2" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s2rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s2co" id="" class="form-control">
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-2-selector">
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-21">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s3" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s3rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s3co" id="" class="form-control">
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-21-selector">
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-22">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iv</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q1s4" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q1s4rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q1s4co" id="" class="form-control">
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-22-selector">
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-3">
                                <td scope="col" style="width: 6%;">2</td>
                                <td scope="col" style="width: 6%;">i</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s1" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s1rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s1co" id="" class="form-control">
                                           <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-3-selector">
                                            <option value="16">16</option>
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-4">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">ii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s2" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s2rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s2co" id="" class="form-control">
                                         <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-4-selector">
                                            <option value="8">8</option>
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>

                            <tr class="question-16-41">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iii</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s3" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s3rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s3co" id="" class="form-control">
                                            <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-41-selector">
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                            <tr class="question-16-42">
                                <td scope="col" style="width: 6%;"></td>
                                <td scope="col" style="width: 6%;">iv</td>
                                <td scope="col" style="width: 70%;">
                                    <textarea name="p2q2s4" id="" cols="" class="form-control shadow-none" rows="1"></textarea>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select class="form-control shadow-none" name="p2q2s4rbt" id="RBT">
                                            <option value="AP">AP</option>
                                            <option value="U">U</option>
                                        </select>
                                </td>
                                <td scope="col" style="width: 6%;">
                                    <select name="p2q2s4co" id="" class="form-control">
                                          <option value="co1">CO1</option>
                                            <option value="co2">CO2</option>
                                            <option value="co3">CO3</option>
                                            <option value="co4">CO4</option>
                                            <option value="co5">CO5</option>
                                            <option value="co6">CO6</option>
                                        </select>
                                </td>

                                <td scope="col" style="width: 6%;">
                                    <select name="" id="" class="form-control question-42-selector">
                                            <option value="4">4</option>
                                        </select>
                                </td>
                            </tr>


                        </tbody>


                    </table>
                    <input type="submit" class="btn btn-danger">
                    </form>
                </div>
            </div>



            <script>
                var addFunctions = () => {
                    const question1 = document.querySelector(".question-16-1");
                    const question2 = document.querySelector(".question-16-2");
                    const question1Selector = document.querySelector(".question-1-selector");
                    const question2Selector = document.querySelector(".question-2-selector");
                    const question21 = document.querySelector(".question-16-21");
                    const question22 = document.querySelector(".question-16-22");
                    const question21Selector = document.querySelector(".question-21-selector");
                    const question22Selector = document.querySelector(".question-22-selector");

                    const question3 = document.querySelector(".question-16-3");
                    const question4 = document.querySelector(".question-16-4");
                    const question3Selector = document.querySelector(".question-3-selector");
                    const question4Selector = document.querySelector(".question-4-selector");
                    const question41 = document.querySelector(".question-16-41");
                    const question42 = document.querySelector(".question-16-42");
                    const question41Selector = document.querySelector(".question-41-selector");
                    const question42Selector = document.querySelector(".question-42-selector");


                    question2.style.display = "none";
                    question21.style.display = "none";
                    question22.style.display = "none";

                    question4.style.display = "none";
                    question41.style.display = "none";
                    question42.style.display = "none";

                    var addQuestionSection1 = (e) => {
                        var indexValue1 = 0;
                        for (let i = 0; i < e.target.length; i++) {
                            if (e.target[i].selected) {
                                indexValue1 = e.target[i].value;
                            }
                        }

                        var addQuestionSection2 = (e) => {
                            var indexValue2 = 0;
                            for (let i = 0; i < e.target.length; i++) {
                                if (e.target[i].selected) {
                                    indexValue2 = e.target[i].value;
                                }
                            }
                            if (parseInt(indexValue1) + parseInt(indexValue2) == 16) {
                                question21.style.display = "none";
                                question22.style.display = "none";
                            } else if (parseInt(indexValue1) + parseInt(indexValue2) == 12) {
                                question21.style.display = "table-row";
                                question22.style.display = "none";
                            } else {
                                question21.style.display = "table-row";
                                question22.style.display = "table-row";
                            }
                        }

                        if (indexValue1 == 16) {
                            question2.style.display = "none";
                            question21.style.display = "none";
                            question22.style.display = "none";
                        } else if (indexValue1 == 8) {
                            question2.style.display = "table-row";
                            question2Selector.selectedIndex = "0";
                            question21.style.display = "none";
                            question22.style.display = "none";
                            question2Selector.addEventListener("change", addQuestionSection2);
                        } else if (indexValue1 == 4) {
                            question2.style.display = "table-row";
                            question2Selector.selectedIndex = "1";
                            question21.style.display = "table-row";
                            question22.style.display = "table-row";
                            question2Selector.addEventListener("change", addQuestionSection2);
                        }
                    }
                    question1Selector.addEventListener("change", addQuestionSection1);



                    var addQuestionSection3 = (e) => {
                        var indexValue3 = 0;
                        for (let i = 0; i < e.target.length; i++) {
                            if (e.target[i].selected) {
                                indexValue3 = e.target[i].value;
                            }
                        }

                        var addQuestionSection4 = (e) => {
                            var indexValue4 = 0;
                            for (let i = 0; i < e.target.length; i++) {
                                if (e.target[i].selected) {
                                    indexValue4 = e.target[i].value;
                                }
                            }
                            if (parseInt(indexValue3) + parseInt(indexValue4) == 16) {
                                question41.style.display = "none";
                                question42.style.display = "none";
                            } else if (parseInt(indexValue3) + parseInt(indexValue4) == 12) {
                                question41.style.display = "table-row";
                                question42.style.display = "none";
                            } else {
                                question41.style.display = "table-row";
                                question42.style.display = "table-row";
                            }
                        }

                        if (indexValue3 == 16) {
                            question4.style.display = "none";
                            question41.style.display = "none";
                            question42.style.display = "none";
                        } else if (indexValue3 == 8) {
                            question4.style.display = "table-row";
                            question4Selector.selectedIndex = "0";
                            question41.style.display = "none";
                            question42.style.display = "none";
                            question4Selector.addEventListener("change", addQuestionSection4);
                        } else if (indexValue3 == 4) {
                            question4.style.display = "table-row";
                            question4Selector.selectedIndex = "1";
                            question41.style.display = "table-row";
                            question42.style.display = "table-row";
                            question4Selector.addEventListener("change", addQuestionSection4);
                        }
                    }

                    question3Selector.addEventListener("change", addQuestionSection3);
                }

                window.addEventListener("load", addFunctions);
            </script>

        </div>
    </div>
</body>

</html>

</html>