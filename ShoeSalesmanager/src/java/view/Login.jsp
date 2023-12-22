<%-- 
    Document   : Login
    Created on : Dec 20, 2023, 12:20:58 PM
    Author     : Admin
--%>
<!--s? d?ng th? vi?n jstl-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bao g?m các t?p CSS t? Bootstrap -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- Bao g?m các t?p JS t? Bootstrap và jQuery -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Khai báo các t?p CSS t? Bootstrap và Font Awesome -->
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <!-- Bao g?m t?p CSS tùy ch?nh cho trang ??ng nh?p -->
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>
    <body>
        <!--Chèn trang menu vào trang chính-->
        <jsp:include page="Menu.jsp"></jsp:include>

            <!-- Ph?n ??ng nh?p và ??ng ký -->
            <div id="logreg-forms">
                <!-- Hi?n th? thông báo l?i n?u có -->
            <c:if test="${error!=null }">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>
            <!--Hi?n th? thông báo thành công n?u có-->
            <c:if test="${mess!=null }">
                <div class="alert alert-success" role="alert">
                    ${mess}
                </div>
            </c:if>
            <!-- Bi?u m?u ??ng nh?p -->
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>  
                <input name="user" value="${username }"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input name="pass" value="${password }" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">

                <!--mô t? hai nút nh?n trong m?t giao di?n s? d?ng Bootstrap:-->
                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <!--btn: L?p này áp d?ng ki?u dáng c? b?n cho m?t nút trong Bootstrap.
                btn-primary: L?p này áp d?ng màu n?n xanh d??ng cho nút, th? hi?n m?t hành ??ng chính (ví d?: t?o tài kho?n m?i).
                btn-success: L?p này áp d?ng màu n?n xanh lá cây cho nút, cho th?y nút này có ý ngh?a tích c?c (ví d?: ??ng nh?p thành công).
                btn-block: L?p này t?o ra m?t nút có ?? r?ng b?ng 100% c?a container ch?a nó, giúp nút tr? thành m?t ô ph?ng r?ng h?n, thích h?p cho vi?c t?o giao di?n toàn trang cho nút. -->
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="User name" required="" autofocus="">
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">
                <input name="email" type="email" id="email" class="form-control" placeholder="Email" required="" autofocus="">
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>
        <!--?ây là th? vi?n JavaScript c?a jQuery, m?t th? vi?n r?t ph? bi?n ???c s? d?ng ?? thao tác v?i DOM (Document Object Model), th?c hi?n các yêu c?u AJAX, x? lý s? ki?n và nhi?u ch?c n?ng khác. Phiên b?n c? th? ???c s? d?ng là 3.3.1.-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!--?ây là th? vi?n JavaScript c?a Bootstrap 4.0.0. Bootstrap là m?t framework CSS và JavaScript ph? bi?n ?? thi?t k? và phát tri?n các giao di?n web ?áp ?ng (responsive) và giao di?n ng??i dùng ??p m?t. Phiên b?n này c?a Bootstrap ???c tích h?p s?n v?i các tính n?ng và c?i ti?n cho Bootstrap 4.-->
        <!--thu?c tính integrity và crossorigin ???c s? d?ng ?? ??m b?o tính an toàn và b?o m?t khi s? d?ng các tài nguyên t? các ngu?n bên ngoài-->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--g?n các s? ki?n click cho các nút và liên k?t trong form ??ng ký và form ??ng nh?p. Ngoài ra, khi trang web ???c t?i hoàn toàn, nó g?i m?t yêu c?u AJAX ?? l?y s? l??ng m?t s?n ph?m c? th? (có th? là s? l??ng trong gi? hàng) và c?p nh?t nó lên trang web.-->
        <script>
            <!--nh?n vào tham s? e th??ng là 1 s? ki?n>                                                                   n click -->
            <!--thay ??i tr?ng thái hi?n th? c?a các ph?n t? form-signin 
            và form-reset bên trong logreg-forms. ?i?u này có th? ???c 
                    s? d?ng ?? hi?n th? ho?c ?n các form ??ng nh?p và form ??t 
        l?i m?t kh?u m?t cách tu?n t? -->
        function toggleResetPswd(e) 
        
            {
            //ng?n ch?n hành vi m?c ??nh c?a s? ki?n, ??m b?o r?ng trang web không th?c hi?n hành ??ng m?c ??nh liên quan ??n s? ki?n (ví d?: khi click vào m?t liên k?t, trang s? không chuy?n h??ng ??n URL ???c ch? ??nh).
                e.preventDefault();
                //S? d?ng jQuery ?? ch?n t?t c? các ph?n t? có class là form-signin n?m bên trong ph?n t? có ID là logreg-forms.
            //.toggle(): Ph??ng th?c này c?a jQuery ???c s? d?ng ?? chuy?n ??i tr?ng thái hi?n th? c?a ph?n t? ???c ch?n. N?u ph?n t? ?ang ?n, nó s? tr? thành hi?n th? và ng??c l?i.
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block  or none
            }
            <!--nó s? th?c hi?n vi?c chuy?n ??i gi?a tr?ng thái hi?n th? c?a các ph?n t? form-signin và form-signup bên trong ph?n t? có ID là logreg - forms.?i?u này có th? ???c s? d?ng ?? hi?n th? ho?c ?n form ??ng nh?p và form ??ng ký m?t cách tu?n            t?.-- >
            function toggleSignUp(e) {
            e.preventDefault();
                    $('#logreg-forms .form-signin').toggle(); // display:block or none
             $('#logreg-forms .form-signup').toggle(); // display:bl            ock or non            e
            }
            <!--?ây là cách vi?t t?t c?a $(document).ready(function() { ... });. Nó ??m b?o r?ng t?t c? các mã bên trong s? ???c th?c thi sau khi toàn b? DOM (Document Object Model) ?ã ???c t?i và s?n sà            ng ?? truy c?p.--> 
            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup            ').click(to            ggleSignUp);
            })
            <!--Khi toàn b? tài nguyên c?a trang web ???c t?i hoàn toàn (bao g?m tài nguyên CSS, JavaScript, hình ?nh, v.v.), hàm ???c truy?n vào (trong tr??ng h?p này là loadAmountCart) s? ???c th?c thi.-->
            window.addEventListener("load", function loadAmountCart() {
                //ph??ng th?c c?a jQuery ?? th?c hi?n các yêu c?u AJAX.            
                $.ajax({
                url: "/WebsiteBanGiay/loadAllAmountCart",
                        type: "get", //send it through get method
                        data: {

                        },
                        //Trong tr??ng success, d? li?u ph?n h?i (responseData) s? ???c gán vào ph?n t? có ID là amountCart thông qua document.getElementById("amountCart").innerHTML = responseData;.
                        success: function (responseData) {
                            document.getElementById("amountCart").innerHTML = responseData;
                         }
                });
            }, false);
        </script>
    </body>
</html>