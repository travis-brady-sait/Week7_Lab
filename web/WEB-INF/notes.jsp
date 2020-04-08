<%-- 
    Document   : notes
    Created on : Mar 5, 2020, 2:05:29 AM
    Author     : 813793
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notes</title>
    </head>
    <body>
        <h1>Notes!</h1>
        <table>
            <tr>
                <th>Date Created</th>
                <th>Title</th>
                <th>Edit</th>
            </tr>
            
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.firstname}</td>
                    <td>${user.lastname}</td>
                   
                    <td>
                        <form action="users" method="get">
                            <input type="submit" value="Edit">
                            <input type="hidden" name="action" value="view">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <c:if test="${selectedUser == null}">
            
            <h3>Edit Note</h3>
            
                         <form action="users" method="post" >
                            <input type="submit" value="Delete note">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="selectedUsername" value="${user.username}">
                        </form>
            <form action="users" method="POST">
                <input type="text" name="username"><br>
                <Textarea  name="contents">${note.contents}</Textarea><br/>
                <input type="submit" value="Save">
            </form>
        </c:if>
    </body>
</html>
