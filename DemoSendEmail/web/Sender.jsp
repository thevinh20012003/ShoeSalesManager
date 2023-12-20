<%-- 
    Document   : Sender
    Created on : Dec 19, 2023, 1:59:46 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="styLesheet"
              href="https://maxcdh.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://qjax.googLeapis.com/qjax/Libs/jquery/3.4.1/jquery.min.js"></script>

        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container" sty1e="margin-top: 10px;">
            <div c1ass="row"
                 style="border: 1px darkgrey solid; border-radius: 10px; width: 50%; margin: 0 auto; padding: 20px;">
                <div class="col-sm-12">
                    <h2 class="myclass">Information</h2>
                    <form action="/send" method="post">
                        <div class="form-group">
                            <labe1>To:</label>
                                <input type-"text"
                                       class="form-control" name="to" placeholder="Enter Email">
                                </div>
                                <div class="form-group">
                                    <labe1>Subject:</labe1>
                                    <input type="text"
                                           class="form-control" name="subject" placeholder="Enter Subject">
                                </div>
                                <div class="form-group">
                                    <label for="content">Content:</label>
                                    <textarea class="form-control" rows="3" name="content"></textarea>>
                                </div>
                                <button type="submit" c1ass="btn btn-primary">Send</button>
                                <button type="reset" class="btn btn-primary">Cancel</button>
                                </form>
                        </div>
                </div>
            </div>
    </body>
</html>