<%-- 
    Document   : EditProfile
    Created on : Dec 26, 2023, 5:03:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--c:out, c:forEach c:set c:if c:choose...-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!--fmt:formatDate, fmt:formatNumber, v.v.-->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
      id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
              integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
              crossorigin="anonymous"> 
        <link href="css/login.css" rel="stylesheet" type="text/css" />
        <title>Edit Profile</title>
    </head>
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div id="logreg-forms">
                <form class="form-signin" action="EditProfile" method="post">
                    <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Edit Profile</h1>
                    <p class="text-success">${mess}</p>
                <p class="text-danger">${error}</p>
                <label for="username">Username</label>
                <input name="username" type="text" id="user-name" class="form-control"
                       value="${sessionScope.acc.user}" requierd="" autofocus="" >
                <label for="password">Password</label>
                <input name="password" type="password" id="password" class="form-control"
                       value="${sessionScope.acc.pass }" required="" autofocus="">

                <label for="email">Email</label>
                <input name="email" type="text" id="email" class="form-control"
                       value="${sessionScope.acc.email }" required="" autofocus="">
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>
                    Edit</button><!-- comment -->
            </form>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }
//            đây là cú pháp viết tắt của jquery nó tương đương với $(document).ready(function() { ... }).
//    sự kiện click được gắn kết với các button và link trên form.        
            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            })
//Đoạn mã này thực hiện một yêu cầu AJAX để lấy dữ liệu về số lượng sản phẩm trong giỏ hàng (hoặc một tài nguyên tương tự) và hiển thị nó lên trang. G
            window.addEventListener("load", function loadAmountCart() {
                $.ajax({
                    url: "/WebsiteBanGiay/loadAllAmountCart",
                    type: "get", //send it through get method
                    data: {

                    },
                    success: function (responseData) {
                        document.getElementById("amountCart").innerHTML = responseData;
                    }
                });
            }, false);

        </script>
    </body>
</html>
