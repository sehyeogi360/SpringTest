<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 조회 기능</title>

		<link rel="stylesheet" href="/css/booking/style.css" type="text/css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
        
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--datepicker-->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
</head>
<body>
	<div id = "wrap" class="container">
       <header class ="d-flex justify-content-center align-items-center"><!--텍스트 센터를 할수도 있지만 이걸로 하자.-->
             <div class="display-4">통나무 펜션</div>
                
                
             
        </header>
         <nav class="main-menu mt-3 "><!--내비 밑에-->
                <ul class="nav nav-fill"><!--왼쪽에 몰림 방지 nav-fill-->
                    <li class="nav-item ml-5"><a href="#" class= "nav-link text-white font-weight-bold">펜션소개</a></li>
                    <li class="nav-item ml-5"><a href="#" class= "nav-link text-white font-weight-bold">객실보기</a></li>
                    <li class="nav-item ml-5"><a href="/ajax/booking/input" class= "nav-link text-white font-weight-bold">예약하기</a></li>
                    <li class="nav-item ml-5"><a href="/ajax/booking/list" class= "nav-link text-white font-weight-bold">예약목록</a></li>
                </ul>
            </nav>
            
            <section class="contents">
            	 <article class="article bg-info">
                    <div class="slide show"><!--객체화시켜야 해서 id 값준다.-->
                        <img id="image" width ="" alt="펜션" src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg">
                    </div>    
                </article>
                
                <aside class="aside d-flex">
                	<div class="booking col-4 d-flex justify-content-center align-items-center">
                        <div class="book text-white  my-3 "><!--텍스트센터 없애기-->
                            <div class="display-4">실시간 <br>예약하기</div> <!--직접줘도 사관업승 <div display -4 -->
                            
                        </div>
                    </div>
                    <div class="booking-confirm col-5">
                        <div class=" my-3 d-flex align-items-end"><!--div 로 한번더 묶기 d-flex 묶기. 회원 비회원 좀더 떨어지게 세로배치 하기-->
                            <h2 class="mr-3 text-white">예약확인</h2><!--마진까지-->        <!--네임속성 같게-->
                          
                        </div>
                        

                        <div class="" id="memberInput">
                            <div class="d-flex align-items-center mt-3"><!--디브 한번더 디플렉스까지 얼라인까지-->
                                <label class="text-white col-3">이름:</label><input type = "text" id = "nameInput" class="form-control"><br>                                
                            </div>   
                            <div class="d-flex align-items-center mt-2"><!--디브 한번더 디플렉스까지-->
                                <label class="text-white col-3">전화번호:</label><input type = "text" id = "phoneNumberInput" class="form-control"><br>                                
                            </div>  
                        </div>
                        
                         <div class="d-flex justify-content-end mt-3">   <!--오른쪽 배치.-->
                            <button type ="submit" id="searchButton" class="btn btn-success float-right">조회하기</button><!--id 부여하기-->
                        </div>
                     
                    </div>
                    <div class=" booking-contact col-3 d-flex justify-content-center align-items-center">
                        <div class="contact text-white my-3 text-bold display-4"><!--display-4 변경 가운데 배치로 변경해보기 텍스트 화이트-->
                            예약문의: <br>
                            010-<br>
                            000-1111
                        </div>
                    </div>
                
                </aside>
            
            
            
            </section>
            <footer class="">
               <div class="text-secodary small mt-3 ml-3">
                    제주특별자치도 제주시 애될읍 <br>
                    사업자 등록번호 111-22-25522/농어촌민박사업자지정/ 대표:김통목<br>
                    copyright 2025 tongnamu Allright reserved.<br>
               </div> 
            </footer>
               
             
       
       
       </div>

        <script>
            $(document).ready(function() {
            	
            	
            	
              
                //유효성 검사 회원
                $("#searchButton").on("click", function(){
                    //밸류속성 값을 가져온다.
                   
                    let name = $("#nameInput").val();
                    let phoneNumber = $("#phoneNumberInput").val();
                   	
                    
                    
                    // 라디오 인풋 중에 checked 속성이 있는 태그를 객체화
                   	// let type = $("input[name='people']:checked").val();//체크드가 들어간놈만 불러올수 있다.
                    // 회원이 선택된 상태일때는 아이디, 비밀번호
                 
                        
                        
                   		
                   		

               
	                    
	                    
	                    $.ajax({
	                    	type: "get"
	                    	, url:"/ajax/booking/main"
	                    	, data:{"name":name, "date":date, "day":day, "headcount":headcount, "state" : state, "phoneNumber":phoneNumber}
	                    	,success:function(data){
	                    		if( name != "" && phoneNumber != "") {
	                                
	                                alert("이름 : " + name +"\n 날짜 :" + date
	                                		+"\n 일수 : " + day + "\n 인원 : " + headcount
	                                	  + "\n 상태 : " + state 	);
	                            }
	                    		
	                    	}
	                    	, error:function(){
	                    		if(name == "" ){
	                                alert("이름을 입력하세요.");
	                                return ;
	                            } 
	                            else if (phoneNumber == ""){//굳이 엘스 안써도 되나봄
	                                alert("전화번호를 입력하세요.");
	                                return ;
	                            } 
	                    		
	                    		//전화번호가 010으로 시작하는지 
	   	                     if(!phoneNumber.startWith("010")){
	   	                        alert("010으로 시작하게 하세요.");
	   	                        return ;
	   	                     }   
	   	                    
	   	                     if(isNaN(phoneNumber)){
	   	         				alert("번호는 숫자만 입력 가능합니다.");
	   	         				return ;
	   	         			}
	                    	}
	                    });
	                          
                    
                    });
           		 });
        
            //setInterval 가운데 이미지가 3초 마다 다른 이미지로 변경되도록 만드하세요.
            let seconds = 1;
            let timerId;    
            var imageList = [//가장 쉬운방법 배열로 관리 한다.
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg",
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner2.jpg", 
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner3.jpg", 
                    "http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner4.jpg"
                ];
            var imageIndex = 0;//그냥 0으로 지정   
            setInterval(function(){//3초정해주면 3초마다 수행
               // $("#image").attr("src", imageList[]); 반복문은 순시간에 012를처리하므로 안됨. 
                imageIndex++;
               
                if(imageIndex == imageList.length){
                    imageIndex = 0;                  
                }
                $("#image").attr("src", imageList[imageIndex]);
             /*
                if(seconds<=3){
                    seconds++;
                    imageIndex++;
                    $("#image").attr("src", imageList[imageIndex]);//무슨이윤지 몰라도 -1 하고 위애 인덱스는 = 1
                } else {
                    clearInterval(timerId);//시간초기화
                    imageIndex = 0;//인덱스 
                    seconds = 0;
                    seconds++;
                    imageIndex++; 
                    $("#image").attr("src", imageList[imageIndex]);
                }*/

            },3000);//3초마다

        
            
        }); 
        </script>

</body>
</html>