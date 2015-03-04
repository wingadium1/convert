<%-- 
    Document   : index
    Created on : Feb 5, 2015, 3:05:32 PM
    Author     : mk
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!
    private String convert(int miles){
        double kilos = miles*1.6;
        DecimalFormat x = new DecimalFormat();
        x.setMaximumIntegerDigits(3);
        
        return x.format(kilos);
        
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <tr>
                <th>Miles</th><th>Kilometers</th>
            </tr>
            <% 
            int[] arr={1, 2, 3, 5, 10, 15, 20,50,100,200,500};  
            for(int i=0;i<arr.length;i++){
               %> 
               <tr>
                   <td><%=arr[i]%></td>
                   <td><%=convert(arr[i])%></td>
               </tr>
               <%
            }

            %>
            
            
            
        </table>
            
            <table border="1" id="table1">
                <tr>
                <th>Miles</th><th>Kilometers</th>
                </tr>
            </table>
            
    </body>
    
    
</html>
<script>
    var arr = [1, 2, 3, 5, 10, 15, 20,50,100,200,500];  
    x=document.getElementById("table1");
    for (var i in arr){
        x.innerHTML = x.innerHTML + " <td>" +arr[i] + "</td><td>"+ (arr[i]*1.6).toFixed(2)+"</td>"
    }
</script>