
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
   <title>companyList</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

   <script src="/TeamProjectt/resources/jquery.min.js"></script>


</head>
<body>
<nav class="shadow p-2 bg-body-tertiary border-bottom">
       <div class="d-flex justify-content-start">
          <div class="d-flex ps-5">
             <a href="main.jsp" class="d-flex align-items-center mb-2 mb-lg-0 text-warning text-decoration-none">
                  <span class="fs-4 fw-bold"><b>BZO</b></span>
              </a>
          </div>
       </div>
     </nav>
<!--  topBar_end -->
<!--  sideBar -->
   <div class="shadow d-flex flex-column flex-shrink-0 p-3 float-start bg-body-tertiary" style="width: 280px; height:860px;">
         <span class="fs-4">Login</span>
         <hr>
         <form>
            <div class="d-flex justify-content-center flex-column">
              <p>ID : <input type="text" name="ID" size="15" required></p>
              <p>PW : <input type="password" name="psw" size="15" placeholder="비밀번호" required></p>
           </div>
           <div class="d-flex justify-content-center">
              <div class="pe-3">
                <input type="submit" class="btn btn-success btn-sm" value="Log in">
                </div>
                <button type="button" class="btn btn-info btn-sm fs-6" style="height:30px;"><a href="#" class="text-decoration-none text-light">Sign up</a></button>
           </div>
       </form>
         
       <hr>
       <ul class="nav nav-pills d-flex flex-column mb-2">
         <li class="nav-item">
           <a href="#" class="nav-link active mb-3" aria-current="page">
         <img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20">
             기업정보
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20">
             이슈게시판
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis mb-3">
             <img src="/resources/svg/newspaper.svg" alt="Bootstrap" width="20" height="20">
             뉴스
           </a>
         </li>
         <li>
           <a href="#" class="nav-link link-body-emphasis">
             <img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20">
             모의전
           </a>
         </li>
       </ul>
       <hr>
       <div class="dropdown d-flex flex-column justify-content-end">
         <a href="#" class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
           <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
           <strong>mdo</strong>
         </a>
         <ul class="dropdown-menu text-small shadow">
           <li><a class="dropdown-item" href="#">New project...</a></li>
           <li><a class="dropdown-item" href="#">Settings</a></li>
           <li><a class="dropdown-item" href="#">Profile</a></li>
           <li><hr class="dropdown-divider"></li>
           <li><a class="dropdown-item" href="#">Sign out</a></li>
         </ul>
       </div>
     </div>
<!--  sideBar_end -->
<!--  sideBar_end -->


   
   <div class="row">
   
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center; height:70px;">         
               <img src="/resources/svg/building.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
               <h5 style="text-align: center; margin-left:40px;">Company Information</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
               <img src="/resources/svg/community.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
               <h5 style="text-align: center; margin-left:40px;">Issue Community</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
               <img src="/resources/svg/stock.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
               <h5 style="text-align: center; margin-left:40px;">Stock Simulator</h5>
          </div>
          
          <div class="col-12 col-sm-6 col-md-3 shadow mb-4" style="display:flex; flex-direction:row; align-items:center;">         
               <img src="/resources/svg/person-lines-fill.svg" alt="Bootstrap" width="20" height="20" style="margin-left:40px;">
               <h5 style="text-align: center; margin-left:40px;">My Page</h5>
          </div>
        
     </div>
     <div class="row">
     <form class="d-flex col-12 col-sm-6 col-md-3 " style=" margin:auto; "action="/company/companyList" method="get">
	     <input class="form-control me-sm-2" type="text" placeholder="Search" name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'/>
	     <input type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum }"/>'/>
	     <input type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount }"/>'/>
	     <button type="button" class="btn btn-warning" type="submit">Search</button>
     </form>
     </div>
     
     
     
   <div class="row">
       
    <div class="card col-lg-8 shadow mb-4" style=" margin:30px; width:1130px; height:400px;">
       <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
        <h3>Company List</h3>
        <hr style="border: solid 2px; width:100%; ">
       </div>
			  <div class="card-body" style="max-height: 300px; overflow:auto;"> 
			     <table class="table table-hover" style="margin:auto; ">
			       <thead style="text-align:center">
			         <tr>
			           <th scope="col">번호</th>
			           <th scope="col">기업명</th>
			           <th scope="col">평가 금액</th>
			         </tr>
			       </thead>
			        <tbody style="text-align:center">
			       <c:forEach items="${companyList}" var="company">
		                     	<tr scope="row" class="table-Default">
		                     		<th><c:out value="${company.cno}" /></th>
		                     		<th >
									<a class='move' href='<c:out value="${company.cno }"/>'>
										<c:out value="${company.c_name }"/>
									</a>
	                        		</th>
	                        		<th><c:out value="${company.profit }"/></th>
	                        	</tr>
                     </c:forEach>
                     </tbody>
			         </table>
                 </div>
          </div>
          
          <div class="card col-lg-8 shadow mb-4" style="margin:30px; width:390px; height:400px;">
            <div class="card-head" style="margin: 10px 0px 0px 0px;"> 
             <h5>Chat</h5>
             <hr style="width:100%; ">
            </div>
                 <div class="card-body" style="max-height: 300px; overflow:auto;"> 
                    
                    
                 </div>
          </div>
          
          <form id='actionForm' action="/company/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
				<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				
				<input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type}"/>'>
				<input type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>'>
			</form>


   </div>
   
 <script>
 
 		var actionForm = $("#actionForm");
 		
		$(".move").on(
		"click",
		function(e) {
			
			e.preventDefault();
			actionForm.append("<input type='hidden' name='cno' value='"
							+$(this).attr("href")+"'>");
			actionForm.attr("action","/company/company");
			actionForm.submit();
		});
 </script>  

  

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>



