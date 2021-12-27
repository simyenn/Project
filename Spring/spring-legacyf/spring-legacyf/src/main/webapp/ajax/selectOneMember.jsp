<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>회원정보 한개 가져오기</h1>
<hr>

<input type="text" placeholder="아이디 입력" id="id">
<button type="button" id="btn">버튼</button>

<ul></ul>


<script src="/resources/js/jquery-3.6.0.js"></script>
<script>
   $('button#btn').on('click', function () {
      
      let id= $('#id').val();
      console.log('id : ' + id);
      
      let result;
      
      //ajax 함수 호출 - 비동기 자바스크립트 통신   
      $.ajax({
         url: '/api/members/' + id + '.json',
         method: 'GET',
         success: function (data) {
            console.log(typeof data); // object
            console.log(data); // {}
            
         showData(data);
         }, 
         error: function(request, status, error){
            alert('code: ' + request.status + '\n message:' + request.responseText + '\n error: ' +error);
            
         }
      });
      
      
   });
   
   function showData(obj){
      
      let str = '';
      
      if (obj.count > 0) {
         let member = obj.member;
         
         str=`
               <li>아이디: \${member.id}</li>
               <li>이름: \${member.name}</li>
               <li>성별: \${(member.gender == 'M') ? '남' : '여'}</li>
               <li>이메일: \${member.email}</li>
         `;
      } else{ // obj.count == 0
         let id = $('#id').val();
         
         str = `
               <li>\${id}에 해당하는 데이터가 없습니다.</li>
         `;
      }
      $('ul').html(str);
   } // showData
   
   
</script>
</body>
</html>