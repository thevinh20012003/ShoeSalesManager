<%-- 
    Document   : Login
    Created on : Dec 20, 2023, 12:20:58 PM
    Author     : Admin
--%>
<!--s? d?ng th? vi?n jstl-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bao g?m c�c t?p CSS t? Bootstrap -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- Bao g?m c�c t?p JS t? Bootstrap v� jQuery -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Khai b�o c�c t?p CSS t? Bootstrap v� Font Awesome -->
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <!-- Bao g?m t?p CSS t�y ch?nh cho trang ??ng nh?p -->
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Login Form</title>
    </head>
    <body>
        <!--Ch�n trang menu v�o trang ch�nh-->
        <jsp:include page="Menu.jsp"></jsp:include>

            <!-- Ph?n ??ng nh?p v� ??ng k� -->
            <div id="logreg-forms">
                <!-- Hi?n th? th�ng b�o l?i n?u c� -->
            <c:if test="${error!=null }">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>
            <!--Hi?n th? th�ng b�o th�nh c�ng n?u c�-->
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

                <!--m� t? hai n�t nh?n trong m?t giao di?n s? d?ng Bootstrap:-->
                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                </div>
                <!--btn: L?p n�y �p d?ng ki?u d�ng c? b?n cho m?t n�t trong Bootstrap.
                btn-primary: L?p n�y �p d?ng m�u n?n xanh d??ng cho n�t, th? hi?n m?t h�nh ??ng ch�nh (v� d?: t?o t�i kho?n m?i).
                btn-success: L?p n�y �p d?ng m�u n?n xanh l� c�y cho n�t, cho th?y n�t n�y c� � ngh?a t�ch c?c (v� d?: ??ng nh?p th�nh c�ng).
                btn-block: L?p n�y t?o ra m?t n�t c� ?? r?ng b?ng 100% c?a container ch?a n�, gi�p n�t tr? th�nh m?t � ph?ng r?ng h?n, th�ch h?p cho vi?c t?o giao di?n to�n trang cho n�t. -->
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
        <!--?�y l� th? vi?n JavaScript c?a jQuery, m?t th? vi?n r?t ph? bi?n ???c s? d?ng ?? thao t�c v?i DOM (Document Object Model), th?c hi?n c�c y�u c?u AJAX, x? l� s? ki?n v� nhi?u ch?c n?ng kh�c. Phi�n b?n c? th? ???c s? d?ng l� 3.3.1.-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <!--?�y l� th? vi?n JavaScript c?a Bootstrap 4.0.0. Bootstrap l� m?t framework CSS v� JavaScript ph? bi?n ?? thi?t k? v� ph�t tri?n c�c giao di?n web ?�p ?ng (responsive) v� giao di?n ng??i d�ng ??p m?t. Phi�n b?n n�y c?a Bootstrap ???c t�ch h?p s?n v?i c�c t�nh n?ng v� c?i ti?n cho Bootstrap 4.-->
        <!--thu?c t�nh integrity v� crossorigin ???c s? d?ng ?? ??m b?o t�nh an to�n v� b?o m?t khi s? d?ng c�c t�i nguy�n t? c�c ngu?n b�n ngo�i-->
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <!--g?n c�c s? ki?n click cho c�c n�t v� li�n k?t trong form ??ng k� v� form ??ng nh?p. Ngo�i ra, khi trang web ???c t?i ho�n to�n, n� g?i m?t y�u c?u AJAX ?? l?y s? l??ng m?t s?n ph?m c? th? (c� th? l� s? l??ng trong gi? h�ng) v� c?p nh?t n� l�n trang web.-->
        <script>
            <!--nh?n v�o tham s? e th??ng l� 1 s? ki?n>                                                                   n click -->
            <!--thay ??i tr?ng th�i hi?n th? c?a c�c ph?n t? form-signin 
            v� form-reset b�n trong logreg-forms. ?i?u n�y c� th? ???c 
                    s? d?ng ?? hi?n th? ho?c ?n c�c form ??ng nh?p v� form ??t 
        l?i m?t kh?u m?t c�ch tu?n t? -->
        function toggleResetPswd(e) 
        
            {
            //ng?n ch?n h�nh vi m?c ??nh c?a s? ki?n, ??m b?o r?ng trang web kh�ng th?c hi?n h�nh ??ng m?c ??nh li�n quan ??n s? ki?n (v� d?: khi click v�o m?t li�n k?t, trang s? kh�ng chuy?n h??ng ??n URL ???c ch? ??nh).
                e.preventDefault();
                //S? d?ng jQuery ?? ch?n t?t c? c�c ph?n t? c� class l� form-signin n?m b�n trong ph?n t? c� ID l� logreg-forms.
            //.toggle(): Ph??ng th?c n�y c?a jQuery ???c s? d?ng ?? chuy?n ??i tr?ng th�i hi?n th? c?a ph?n t? ???c ch?n. N?u ph?n t? ?ang ?n, n� s? tr? th�nh hi?n th? v� ng??c l?i.
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block  or none
            }
            <!--n� s? th?c hi?n vi?c chuy?n ??i gi?a tr?ng th�i hi?n th? c?a c�c ph?n t? form-signin v� form-signup b�n trong ph?n t? c� ID l� logreg - forms.?i?u n�y c� th? ???c s? d?ng ?? hi?n th? ho?c ?n form ??ng nh?p v� form ??ng k� m?t c�ch tu?n            t?.-- >
            function toggleSignUp(e) {
            e.preventDefault();
                    $('#logreg-forms .form-signin').toggle(); // display:block or none
             $('#logreg-forms .form-signup').toggle(); // display:bl            ock or non            e
            }
            <!--?�y l� c�ch vi?t t?t c?a $(document).ready(function() { ... });. N� ??m b?o r?ng t?t c? c�c m� b�n trong s? ???c th?c thi sau khi to�n b? DOM (Document Object Model) ?� ???c t?i v� s?n s�            ng ?? truy c?p.--> 
            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup            ').click(to            ggleSignUp);
            })
            <!--Khi to�n b? t�i nguy�n c?a trang web ???c t?i ho�n to�n (bao g?m t�i nguy�n CSS, JavaScript, h�nh ?nh, v.v.), h�m ???c truy?n v�o (trong tr??ng h?p n�y l� loadAmountCart) s? ???c th?c thi.-->
            window.addEventListener("load", function loadAmountCart() {
                //ph??ng th?c c?a jQuery ?? th?c hi?n c�c y�u c?u AJAX.            
                $.ajax({
                url: "/WebsiteBanGiay/loadAllAmountCart",
                        type: "get", //send it through get method
                        data: {

                        },
                        //Trong tr??ng success, d? li?u ph?n h?i (responseData) s? ???c g�n v�o ph?n t? c� ID l� amountCart th�ng qua document.getElementById("amountCart").innerHTML = responseData;.
                        success: function (responseData) {
                            document.getElementById("amountCart").innerHTML = responseData;
                         }
                });
            }, false);
        </script>
    </body>
</html>