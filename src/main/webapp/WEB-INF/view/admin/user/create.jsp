<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Latest Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <!-- <link href="/css/demo.css" rel="stylesheet"> -->
                <!-- <link href="/css/demo.css" rel="stylesheet"> -->

            </head>

            <body>
                <div class="d-flex flex-fill">
                    <div class="p-3 flex-fill mb-2 bg-danger-subtle text-danger-emphasis">
                    </div>
                    <div class="p-3 flex-fill mb-2 bg-info-subtle text-info-emphasis">
                        <div class="py-3">
                            <h1 class="my-3 mx-3">
                                Create a user
                            </h1>
                        </div>
                        <form:form method="post" action="/admin/user/create1" modelAttribute="newUser">
                            <div class="mb-3">
                                <label class="form-label">Email address</label>
                                <form:input type="email" class="form-control" path="email" />
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Password</label>
                                <form:input type="password" class="form-control" path="password" />
                            </div>
                            <div class="mb-3">
                                <label class="form-label"> Type your phone number </label>
                                <form:input class="form-control" path="phone"></form:input>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"> Type your full name </label>
                                <form:input class="form-control" path="fullName"></form:input>
                            </div>
                            <div class="mb-3">
                                <label class="form-label"> Type your address </label>
                                <form:input class="form-control" path="address"></form:input>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <div class="mb-3">

                            </div>
                        </form:form>
                    </div>
                    <div class="p-3 flex-fill mb-2 bg-dark-subtle text-dark-emphasis">
                    </div>
                </div>


                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
            </body>

            </html>