<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 

<html>
    <head>
          <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Expense|Intution</title>
        
        
          <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
        <link rel="icon" type="image/png" sizes="32x32" href="image/ic_intuition_logo_green_72dp.png">
 <link rel="icon" type="image/png" sizes="16x16" href="image/ic_intuition_logo_green_72dp.png">
 <link rel="stylesheet"
 	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link rel="stylesheet"
 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	
 	
 	
 	  <link rel="stylesheet" type="text/css" href="sources\css\expenses.css">
 	  <link rel="stylesheet" type="text/css" href="sources\css\bootstrap2.css">
 	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
 	
 	
 	<!-- ---item page -->
 	 <script type="text/javascript" src="sources\js\datepicker.js"></script>
 	 <script type="text/javascript" src="sources\js\bootstrap.js"></script>
 	 <script type="text/javascript" src="sources\js\expenses.js"></script>
 	 
 	
 	 
 	 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" ></script>


<script
src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js">
</script>

 	<!-- -- snackbar css -->
 	<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#snackbar {
  visibility: hidden;
  min-width: 450px;
  margin-left: -125px;
  background-color: #333;
  color: #fff;
  text-align: center;
  border-radius: 2px;
  padding: 16px;
  position: fixed;
  z-index: 1;
  left: 50%;
  bottom: 30px;
  font-size: 17px;
}

#snackbar.show {
  visibility: visible;
  -webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
  animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@-webkit-keyframes fadein {
  from {bottom: 0; opacity: 0;} 
  to {bottom: 30px; opacity: 1;}
}

@keyframes fadein {
  from {bottom: 0; opacity: 0;}
  to {bottom: 30px; opacity: 1;}
}

@-webkit-keyframes fadeout {
  from {bottom: 30px; opacity: 1;} 
  to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
  from {bottom: 30px; opacity: 1;}
  to {bottom: 0; opacity: 0;}
}
</style>
 	
 	<style>
 	#mydivoff{position:relative}
 	#overlay{position:absolute}
 	
 	</style>
 
 
    </head>
    <body>
    
    <input type="hidden" id="contextPath" value="" />
<div class="container-fluid" style="background-color: #f5f5f5;">
    <div class="row" style="background-color: Darkcyan; height: 55px; position: fixed; z-index: 1; width: -webkit-fill-available; top: 0; right: 0; left: 0">
      <div class="col-lg-10 col-md-10 col-sm-8 col-xs-8"
              style="padding: 10px 0px 0px 20px">
              <div class="row" onclick="window.history.back();">
                <div class="col-lg-1 col-md-1 col-sm-3 col-xs-3">
                  <a href="/single-device/details"> <img
                    src="image/ic_arrow_back_black_24dp.png"
                    width="24px" height="24px" class="report-arro-left-dsk" /></a>
                </div>
                <div
                  class="col-lg-11 col-md-11 col-sm-9 col-xs-9 report-text-style-dsk report-text-style-mbl"
                  style="color: black;">
                   <h4><b>Expenses</b></h4>
                </div>
              </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-4 col-xs-4"
    						style="margin-top: 10px;">
    						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
    							<img src="image/ic_save_black_24dp.png"
    								style="cursor: pointer;" width="24px" height="24px"
    								onclick="exportIndividualReport()">
    						</div>
    						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
    							<img src="image/ic_send_black_24dp.png"
    								width="24px" height="24px" onclick="sendCsvReport()"
    								style="cursor: pointer;">
    						</div>
    					</div>


        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" data-toggle="modal" data-target="#dateModal1" style="background-color: whitesmoke; padding-bottom: 10px; cursor: pointer; border-bottom: 1px solid; border-bottom-color: gainsboro;">
            <div class="" style="text-align: center; margin-top: 15px;">
                <span class="txt-font-14" style="cursor: pointer;" id="fltrRecordDate">26 Mar 2022,12:01 AM - 26 Mar 2022,11:59 PM</span>
            </div>
        </div>


    </div>




    <div id="dateModal1" class="modal fade " role="dialog">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header1" style="border-bottom: none; height: 40px;">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="margin-left: 15px;">
                            <span><b>Select Period</b></span>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" checked value="today" /><span>&nbsp;&nbsp;Today</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" value="week" /><span>&nbsp;&nbsp;This Week</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" value="month" /><span>&nbsp;&nbsp;This Month</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" value="year" /><span>&nbsp;&nbsp;This Year</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" value="Alltime" /><span>&nbsp;&nbsp;All Time</span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 date-modal-radio-label">
                            <input type="radio" name="reportDateRadio" /><span>&nbsp;&nbsp;Custom</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--   custom calender modal   -->
    <div id="CustomModal" class="modal fade " role="dialog">
        <div class="modal-dialog modal-sm">
            <!-- Modal content-->
            <div class="modal-content" style="background-color: whitesmoke">
                <div class="modal-header" style="border-bottom: none;">
                    <img data-dismiss="modal" src="/assets/images/ic_arrow_back_black_24dp.png" width="24px" height="24px" style="cursor: pointer;" onclick="hideCustomModal()"> &nbsp;
                    <div style="display: inline-block; color: #000000">
                        <b>Custom</b>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="btn-group width-pencent-100" style="margin-bottom: 22px;">
                        <div class="btn customCalender custom-date-section-style" onclick="showFromDateCalender()">
                            <span style="float: left; margin-top: -8px; color: red;">From</span>
                            <br> <span style="float: left; margin-top: -10px" id="all-device-report-from-date">26 Mar 2022</span>
                        </div>
                        <div class="btn customClock custom-time-section-style" onclick="showFromTimeClock()">
                            <span style="float: left; margin-top: 10px" id="all-device-report-from-time">12:01 AM</span>
                        </div>
                    </div>
                    <div class="btn-group width-pencent-100">
                        <div class="btn customCalender custom-date-section-style" onclick="showToDateCalender()">
                            <span style="float: left; margin-top: -8px; color: red">To</span><br>
                            <span style="float: left; margin-top: -10px" id="all-device-report-to-date">26 Mar 2022</span>
                        </div>
                        <div class="btn customClock custom-time-section-style" onclick="showToTimeClock()">
                            <span style="float: left; margin-top: 10px" id="all-device-report-to-time">11:59 PM</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div onclick="customReportDashboard()" style="background-color: red; padding-top: 9px; cursor: pointer; color: white; text-align: center; height: 40px; margin: 4px">
                            <b>Go</b>
                        </div>
                    </div>
                </div>
                <div class="hide">
                    <input id="datePickerFrom" type="hidden" placeholder="date" value="26 Mar 2022" /> <input id="timePickerFrom" type="hidden" class="" placeholder="time" value="12:01 AM" /> <input id="datePickerTo" type="hidden" class="" placeholder="date"
                        value="26 Mar 2022" /> <input id="timePickerTo" type="hidden" class="" placeholder="time" value="11:59 PM" />
                </div>
            </div>
        </div>
    </div>
  </div>
<br>
<!---four mode page--->
<div class="row" style="margin-top:80px;"></div>
<div class="row" style="text-align: center;">

<div class=""
				>
    				<div class="col-lg-6 wellheight2"
				style="margin-top: 8px; font-family: Arial;">
				<div class="well" style="background-color: #FFFFFF;">
					<div class="row"onclick="myFunction()"
				style="cursor: pointer;">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"
							style="text-align: left; font-family: Arial;">
							<div style="font-size: 13px;">Expenses</div>
							
							<p>
								
									
										<b style="font-size: 13px;">&#x20b9;0</b>
									
									
								
							</p>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<img src="image/macbook-money--v3.png"
								width="24px" height="24px" style="float: right;" />
						</div>
					</div>
 <div id="snackbar">No expenses to see!!!</div>
					
				</div>
			</div>
			</div>
			
			
			<div class=""
				>
    				<div class="col-lg-6 wellheight2"
				style="margin-top: 8px; font-family: Arial;">
				<div class="well" style="background-color: #FFFFFF;">
					<div class="row"onclick="myFunction()"
				style="cursor: pointer;">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"
							style="text-align: left; font-family: Arial;">
							<div style="font-size: 13px;">Tansactions</div>
							
							<p>
								
									
										<b style="font-size: 13px;">&#x20b9;0</b>
									
									
								
							</p>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<img src="image/transaction.png"
								width="24px" height="24px" style="float: right;" />
						</div>
					</div>
 
					
				</div>
			</div>
			</div>

      <div class=""
				>
    				<div class="col-lg-6 wellheight2"
				style="margin-top: 8px; font-family: Arial;">
				<div class="well" style="background-color: #FFFFFF;">
					<div class="row"onclick="myFunction()"
				style="cursor: pointer;">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"
							style="text-align: left; font-family: Arial;">
							<div style="font-size: 13px;">Top category</div>
							
							<p>
								
									
										 <b style="font-size: 13px;">NA</b>
									
								
							</p>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<img src="image/category.png"
								width="24px" height="24px" style="float: right;" />
						</div>
					</div>
 
					
				</div>
			</div>
			</div>

      

      <div class=""
				>
    				<div class="col-lg-6 wellheight2"
				style="margin-top: 8px; font-family: Arial;">
				<div class="well" style="background-color: #FFFFFF;">
					<div class="row" onclick="myFunction()"
				style="cursor: pointer;">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"
							style="text-align: left; font-family: Arial;">
							<div style="font-size: 13px;">Top user</div>
							
							<p>
								
									
										<b style="font-size: 13px;">NA</b>
									
									
								
							</p>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<img src="image/user (1).png"
								width="24px" height="24px" style="float: right;" />
						</div>
					</div>
 
					
				</div>
			</div>
			</div>

      

      

      
      
					</div>


        <!-- -                                    dash board page -->
        
        <div id="mydivon" style="display:block;background-color: #FFFFFF;">
        <div class="row" style="text-align: center;width:65%;float:right;margin:auto;">
      <div class="col-lg-6 wellheight2"
        style="margin-top: 8px; font-family: Arial;">
        
        <div class="well" style="background-color: #FFFFFF;"><button onclick="myFunction()"
            style="border-radius: 30px; background-color: white; border: 1px solid; border-color: white;">
             <span
              style="font-size: 13px;">No data display to chart</span>
          </button></div>
           </div>
        </div>
        <div class="row" style="text-align: center;width:65%;float:right;margin:auto;">
      <div class="col-lg-6 wellheight2"
        style="margin-top: 8px; font-family: Arial;">
        
        <div class="well"style="background-color: #FFFFFF;"><button onclick="myFunction()"
            style="border-radius: 30px; background-color: white; border: 1px solid; border-color: white;">
             <span
              style="font-size: 13px;">No data display to chart</span>
          </button></div>
          </div>
          </div>
          <div class="row" style="text-align: center;width:65%;float:right;margin:auto;">
      <div class="col-lg-6 wellheight2"
        style="margin-top: 8px; font-family: Arial;">
        
        <div class="well" style="background-color: #FFFFFF;"><button onclick="myFunction()"
            style="border-radius: 30px; background-color: white; border: 1px solid; border-color: white;">
             <span
              style="font-size: 13px;">No data display to chart</span>
          </button></div>
           </div>
        </div>
       </div> 
       
       
       <div  id="mydivoff" style="display:none">
        <div style="text-align: center;width:65%;float:right;margin:auto;" >
        <span
              style="font-size: 15px;">Expenses</span>
        
<canvas id="myChart" style="width:70%;max-width:500px;"></canvas>

</div>
       
        <div style="text-align: center;width:65%;float:right;margin:auto;">
        <span
              style="font-size: 15px;">Category</span>
        
<canvas id="myChart1" style="width:70%;max-width:500px;"></canvas>

</div>
        
        
        
        
        
        <div style="text-align: center;width:65%;float:right;margin:auto;">
        <span
              style="font-size: 15px;">User</span>
        
<canvas id="myChart2" style="width:70%;max-width:500px;"></canvas>

</div>
       
      
      </div>


      

       <button type="button" id="myBtn" class="btn btn-danger pull-right fdColor"
style="position: fixed; bottom: 30px; right: 35px; border-radius: 20px; font-size: 20px; display: block; height: 40px; width: 40px;">
<span>+</span>
</button>




      










    <!-- next page- -->

    <div class="container">

<div class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header"
        style="background-color: whitesmoke; border-bottom: none;">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <button type="button" class="btn btn-default pull-left"
              data-dismiss="modal" onclick="cancelAddingItem()"
              style="background-color: rgb(240, 240, 240);">
              <b>CANCEL</b>
            </button>
          </div>
          <div
            class="col-lg-4 col-md-4 col-sm-4 col-xs-4 add_item_top_mbl add_item_txt_left_desk">
            <span class="add_item_txt_left_mbl add_item_top_mbl"><b>Add
                Expense</b></span>
          </div>
          <div
            class="col-lg-4 col-md-4 col-sm-4 col-xs-4 save_item_top_mbl">
             <a href="javascript:;" onmousedown="toggleDiv('mydiv');">
            <button class="btn pull-right" id="mydivon"
              onclick="myFunction()1"
              style="background-color: Darkcyan; color: black">SAVE
             
 
            </button></a>
          </div>
        </div>
      </div>

      <div class="modal-body">
        <form role="form">
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
              <label for="add_item_name" style="color: black">Expense
                Name</label> <input type="text" name="name" id="add_item_name"
                class="form-control" autocomplete="off" />
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
              <label for="add_item_name" style="color: black">Price*
                </label> <input type="text" name="name" id="add_item_name"
                class="form-control" autocomplete="off" />
            </div>
          </div>
          <!-- -dropdown -->
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
              <label for="add_item_name" style="color: black">Category
                </label> 
                <div class="search_select_box">
  <select class="selectpicker" data-live-search="true">

  <option  >Rent</option>
  <option >Transportation</option>
  <option >Utilities</option>
  <option >Maintenance</option>
  <option >Miscellaneous</option>
  <option >Medical</option>
</select>
</div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
              <label for="add_item_name" style="color: black">User
                </label> 
                <div class="search_select_box"  >
  <select class="selectpicker" data-live-search="true">

  <option  >Rashmi</option>
  <option ></option>
  <option ></option>
  <option ></option>
  <option ></option>
  <option ></option>
</select>
</div>
            </div>
          </div>
        </form>

      </div>

<!-- -calendor -->                      
<div class="date" style="padding: 25px;">
<label for="date">From:</label>
<div  class="input-group"  id="datetimepicker">
<input type="text" class="form-control">
<span class="input-group-addon">
<span class="glyphicon glyphicon-calendar"></span>

</span>

</div>

</div>
        <div class="modal-footer"
        style="background-color:Darkcyan; border-bottom: none;"></div>

      </div>

    </div>

</div>


</div>






    <script>
        $(function() {
            $('#datePickerFrom').on("change", function() {
                var val = $('#datePickerFrom').val();
                $('#all-device-report-from-date').text(val);
            });
            $('#timePickerFrom').on("change", function() {
                var val = $('#timePickerFrom').val();
                $('#all-device-report-from-time').text(val);
            });
            $('#datePickerTo').on("change", function() {
                var val = $('#datePickerTo').val();
                $('#all-device-report-to-date').text(val);
            });
            $('#timePickerTo').on("change", function() {
                var val = $('#timePickerTo').val();
                $('#all-device-report-to-time').text(val);
            });
        });

        function showFromDateCalender() {
            $fromDatePicker.open();
        }

        function showFromTimeClock() {
            $fromTimePicker.open();
        }

        function showToDateCalender() {
            $toDatePicker.open();
        }

        function showToTimeClock() {
            $toTimePicker.open();
        }

        var $fromDatePicker = $('#datePickerFrom').datepicker({
            header: true,
            footer: true,
            modal: true,
            language: 'en',
            pick12HourFormat: true,
            format: 'dd mmm yyyy'

        });

        var $fromTimePicker = $('#timePickerFrom').timepicker({
            header: true,
            footer: true,
            modal: true,
            language: 'en',
            pick12HourFormat: true,
            format: 'hh:MM TT',
            maskInput: true, // disables the text input mask
            pickDate: true, // disables the date picker
            pickTime: true, // disables de time picker
            pickSeconds: true, // disables seconds in the time picker

        });

        var $toDatePicker = $('#datePickerTo').datepicker({
            header: true,
            footer: true,
            modal: true,
            language: 'en',
            pick12HourFormat: true,
            format: 'dd mmm yyyy',
            maskInput: true, // disables the text input mask
            pickDate: true, // disables the date picker
            pickTime: true, // disables de time picker
            pickSeconds: true, // disables seconds in the time picker

        });

        var $toTimePicker = $('#timePickerTo').timepicker({
            header: true,
            footer: true,
            modal: true,
            language: 'en',
            pick12HourFormat: true,
            format: 'hh:MM TT',
            maskInput: true, // disables the text input mask
            pickDate: true, // disables the date picker
            pickTime: true, // disables de time picker
            pickSeconds: true, // disables seconds in the time picker

        });

      </script>
    <!-- + button -->
     <script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
  });
});
</script>

<!-- snackbar  -->

<script>
function myFunction() {
  var x = document.getElementById("snackbar");
  x.className = "show";
  setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}
</script>


    


    <!-- -calendar -->
 <script type="text/javascript">

 $(function(){
	 $("#datetimepicker").datetimepicker({});
 });
 </script>



<!-- - dropdown -->
<script type="text/javascript">
$(document).ready(function){
	$('.search_select_box select').selectpicker();
	}
 </script>

<!-- --Line  chart -->
<script>
var xValues = [100,200,300,400,500,600,700,800,900,1000];

new Chart("myChart", {
  type: "line",
  data: {
    labels: xValues,
    datasets: [{
      data: [860,1140,1060,1060,1070,1110,1330,2210,7830,2478],
      borderColor: "red",
      fill: false
    },{
      data: [1600,1700,1700,1900,2000,2700,4000,5000,6000,7000],
      borderColor: "green",
      fill: false
    },{
      data: [300,700,2000,5000,6000,4000,2000,1000,200,100],
      borderColor: "blue",
      fill: false
    }]
  },
  options: {
    legend: {display: false}
  }
});

var xValues = [100,200,300,400,500,600,700,800,900,1000];

new Chart("myChart1", {
  type: "pie",
  data: {
    labels: xValues,
    datasets: [{
      data: [860,1140,1060,1060,1070,1110,1330,2210,7830,2478],
      borderColor: "red",
      fill: false
    },{
      data: [1600,1700,1700,1900,2000,2700,4000,5000,6000,7000],
      borderColor: "green",
      fill: false
    },{
      data: [300,700,2000,5000,6000,4000,2000,1000,200,100],
      borderColor: "blue",
      fill: false
    }]
  },
  options: {
    legend: {display: false}
  }
});

var xValues = [100,200,300,400,500,600,700,800,900,1000];

new Chart("myChart2", {
  type: "doughnut",
  data: {
    labels: xValues,
    datasets: [{
      data: [860,1140,1060,1060,1070,1110,1330,2210,7830,2478],
      borderColor: "red",
      fill: false
    },{
      data: [1600,1700,1700,1900,2000,2700,4000,5000,6000,7000],
      borderColor: "green",
      fill: false
    },{
      data: [300,700,2000,5000,6000,4000,2000,1000,200,100],
      borderColor: "blue",
      fill: false
    }]
  },
  options: {
    legend: {display: false}
  }
});

</script>










<!-- save button -->
<script type="text/javascript">
function toggleDiv(divid)
{

  varon = divid + 'on';
  varoff = divid + 'off';

  if(document.getElementById(varon).style.display == 'block')
  {
  document.getElementById(varon).style.display = 'none';
  document.getElementById(varoff).style.display = 'block';
  }
 
  else
  {  
  document.getElementById(varoff).style.display = 'none';
  document.getElementById(varon).style.display = 'block'
  }
} 
</script>
</body>   
</html>
       
   
