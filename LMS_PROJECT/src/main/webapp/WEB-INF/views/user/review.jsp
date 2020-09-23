<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
            <div id="reviewBoard" class="col-md-12">
            	
            </div>
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
  <script type="text/javascript">
  	  var index = 0;
  	  var list = JSON.parse('${jsonList}');
  	  
      function addAlert(){
    	let boardDiv = document.getElementById('reviewBoard');
    	
    	let div = document.createElement("div");
    	
    	if(list[index].memoryRate >= 60){
	    	div.classList.add("alert","alert-success");
    	}else if(list[index].memoryRate >= 30){
    		div.classList.add("alert","alert-warning");
    	}else{
    		div.classList.add("alert","alert-danger");
    	}    	
	    	let button = document.createElement("button");
	    	button.setAttribute('type', 'button');
	    	button.setAttribute('class', 'close');
	    	button.setAttribute('data-dismiss', 'alert');
	    	button.setAttribute('aria-label', 'Close');
	    	button.setAttribute('aria-label', 'Close');
	    	button.addEventListener("click", addAlert);
	    	
		    	let i = document.createElement("i");
		    	i.setAttribute('class', 'material-icons');
		    	i.innerText = 'close';
		    
		    button.appendChild(i);	
	    	
	    	let span = document.createElement("span");
	    	
		    	let a = document.createElement("a");
		    	a.setAttribute('href', '/user/review/hard?stuCode='+list[index].stuCode);
		    	a.innerHTML = list[index].title + "&nbsp;&nbsp;&nbsp;&nbsp;";
		    	
		    	let b = document.createElement("b");	
		    	b.innerHTML = "기억률 : " + list[index].memoryRate.toFixed(1) +"% &nbsp;&nbsp;&nbsp;&nbsp;" + list[index].elapsedTime + "분 전에 학습 &nbsp;&nbsp;&nbsp;&nbsp; [" + list[index].coName +"]";
		    
		    span.appendChild(a);
		    span.appendChild(b);
	    	
	    	div.appendChild(button);
	    	div.appendChild(span);
    	boardDiv.appendChild(div);
    	if(list.length-1 > index) {
    		index = index + 1;
    	}else {
    		index = 0;
    	}
   	  };
      
      function init(){
  		  let max = list.length > 10 ? 10: list.length;
  		  for(i=0; i < max ; i++){
  			 addAlert();
   		  }
  	  };
      
      init();
      
</script>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
