<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>

<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>

<%@page import="java.util.*" session ="true" %>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<h2>how are you</h2>--%>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">


           <a class="navbar-brand" href="#">Home</a>


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
<%--                    menu based of a 2d array--%>
                    <%
                        String[][] arrMenu ={ {"Movies", "Music", "Clothing"}};
                        for (String[] menu : arrMenu) {
                    %>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <%
                            for (String s : menu) {
                        %>
                        <li><a class="dropdown-item" href="#"><%= s %>
                        </a></li>

                        <%
                            }
                        %>

                    </ul>
                    <%
                        }
                    %>

                </li>
            </ul>

        </div>
    </div>
</nav>
<br/>
<a href="session.jsp">Get Session</a>

<%--<%--%>
<%--    String pageTittle = "Home";--%>

<%--    //session attribute for Header Bar--%>
<%--    request.setAttribute("page_title", pageTittle);--%>

<%--    //forward the request to jsp--%>
<%--    request.getRequestDispatcher("/session.jsp").forward(request, response);--%>

<%--%>--%>


<%
    //menu based of an arrayList
    ArrayList<String> array = new ArrayList<>();
    array.add("lloyd");
    array.add("tafara");
    array.add("mugadza");
   //looping through the array list to get user
    for (int i =0; i < array.size(); i++) {
        array.get(i);

    }
    request.setAttribute("Users", array);
%>

<%
//    menu based of hashMap
    HashMap<String, String> capitalCities = new HashMap<String, String>();

    // Add keys and values (Country, City)
    capitalCities.put("England", "London");
    capitalCities.put("Germany", "Berlin");
    capitalCities.put("Norway", "Oslo");
    capitalCities.put("USA", "Washington DC");

    //looping through list to get the current city
    for (int j = 0; j <capitalCities.size() ; j++) {
        capitalCities.get(j);
    }
    request.setAttribute("cities",capitalCities);
    System.out.println(capitalCities);
%>


<select name="country" >
    <option value="0"> argentina</option>
    <option value="1">Australia</option>
    <option value="2">Austria</option>
    <option value="3">Belgium</option>
    <option value="4">Brazil</option>
    <option value="5">Canada</option>
    <option value="6">China</option>
    <option value="=7">Zimbabwe</option>
</select>

</body>
</html>