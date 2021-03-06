<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/topbar.jsp" %>
      <div class="content">
        <div class="container-fluid">
          
          <!-- your content here --> 
     
          <div class="row">
          
         	<div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-success">
                  <div class="ct-chart" id="dailySalesChart">
                  	<svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line">
                  		<g class="ct-grids">
                  			<line x1="40" x2="40" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="115.42857142857143" x2="115.42857142857143" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="190.85714285714286" x2="190.85714285714286" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="266.2857142857143" x2="266.2857142857143" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="341.7142857142857" x2="341.7142857142857" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="417.14285714285717" x2="417.14285714285717" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line x1="492.57142857142856" x2="492.57142857142856" y1="0" y2="120" class="ct-horizontal"></line>
                  			<line y1="120" y2="120" x1="40" x2="568" class="ct-vertical"></line>
                  			<line y1="96" y2="96" x1="40" x2="568" class="ct-vertical"></line>
                  			<line y1="72" y2="72" x1="40" x2="568" class="ct-vertical"></line>
                  			<line y1="48" y2="48" x1="40" x2="568" class="ct-vertical"></line>
                  			<line y1="24" y2="24" x1="40" x2="568" class="ct-vertical"></line>
                  			<line y1="0" y2="0" x1="40" x2="568" class="ct-vertical"></line>                  			
                  		</g>
                  		<g class="ct-series ct-series-a">
                  			<path d="M40,91.2C115.429,79.2,115.429,79.2,115.429,79.2C190.857,103.2,190.857,103.2,190.857,103.2C266.286,79.2,266.286,79.2,266.286,79.2C341.714,64.8,341.714,64.8,341.714,64.8C417.143,76.8,417.143,76.8,417.143,76.8C492.571,28.8,492.571,28.8,492.571,28.8"
                  				class="ct-line"></path>
                  			<line x1="40" y1="91.2" x2="40.01" y2="91.2" class="ct-point" ct:value="12" opacity="1"></line>
                  			<line x1="115.42857142857143" y1="79.2" x2="115.43857142857144" y2="79.2" class="ct-point" ct:value="12" opacity="1"></line>
                  			<line x1="190.85714285714286" y1="103.2" x2="190.86714285714285" y2="103.2" class="ct-point" ct:value="17" opacity="1"></line>
                  			<line x1="266.2857142857143" y1="79.2" x2="266.29571428571427" y2="79.2" class="ct-point" ct:value="7" opacity="1"></line>
                  			<line x1="341.7142857142857" y1="64.8" x2="341.7242857142857" y2="64.8" class="ct-point" ct:value="17" opacity="1"></line>
                  			<line x1="417.14285714285717" y1="76.8" x2="417.15285714285716" y2="76.8" class="ct-point" ct:value="23" opacity="1"></line>
                  			<line x1="492.57142857142856" y1="28.799999999999997" x2="492.58142857142855" y2="28.799999999999997" class="ct-point" ct:value="18" opacity="1"></line>
         
                  		</g>
                  		<g class="ct-labels">
                  		</g>
                  	</svg>
                  </div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Daily Sales</h4>
                  <p class="card-category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 55% </span> increase in today sales.</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> updated 4 minutes ago
                  </div>
                </div>
              </div>
            </div>
          

            <div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-warning">
                  <div class="ct-chart" id="websiteViewsChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Email Subscriptions</h4>
                  <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-danger">
                  <div class="ct-chart" id="completedTasksChart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">Completed Tasks</h4>
                  <p class="card-category">Last Campaign Performance</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> campaign sent 2 days ago
                  </div>
                </div>
              </div>
            </div>
          </div>
          
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
  <script>
	  function initDashboardPageCharts() {
	  	if ($('#dailySalesChart').length != 0 && $('#websiteViewsChart').length != 0) {
	      /* ----------==========     Daily Sales Chart initialization For Documentation    ==========---------- */
	     	dataDailySalesChart = {
		        labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
		        series: [
		          [12, 17, 7, 17, 23, 18, 38]
		        ]
	     	};

	      	optionsDailySalesChart = {
		        lineSmooth: Chartist.Interpolation.cardinal({
		          tension: 0
	        	}),
	        
		        low: 0,
		        high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
		        chartPadding: {
		          top: 0,
		          right: 0,
		          bottom: 0,
		          left: 0
		        },
	     	}

	      var dailySalesChart = new Chartist.Line('#dailySalesChart', dataDailySalesChart, optionsDailySalesChart);
	      var animationHeaderChart = new Chartist.Line('#websiteViewsChart', dataDailySalesChart, optionsDailySalesChart);
	      
	    }
	 }
	  
	 $(document).ready(function() {    
      	// Javascript method's body can be found in assets/js/demos.js
     	initDashboardPageCharts();

     });
  

    
  </script>
</body>
</html>
