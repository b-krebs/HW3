

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Salary Info</title>
        
      <link rel = "stylesheet" type = "text/css" href = "calculatorStyle.css" />
        
    </head>
    
    
 <%

        int hours=Integer.parseInt(request.getParameter("hours"));
        int pay=Integer.parseInt(request.getParameter("pay"));
        int preTax= Integer.parseInt(request.getParameter("preTax"));
        int postTax= Integer.parseInt(request.getParameter("postTax"));
        
        int grossPay=0;
        int otHours= hours- 40;
        int regularHours=40;
        int otPay= pay*(3/2);
        int regularPay= regularHours* pay;
        int taxRate= 0;
        
        
        if (hours>40) {
                      otPay=otHours*otPay;
                      grossPay=regularPay* otPay;
                       }
        else
                grossPay=hours*pay;
        
        if (grossPay>500)  {
            
            taxRate= (9/50);
        }
        
        else {
            
            taxRate= (11/50);
        }
        
       int taxablePay= grossPay-preTax;
       int taxAmt= taxRate* taxablePay;
       int postTaxPay= taxablePay- taxAmt;
       int netPay= postTaxPay- postTax;
       
       
        
        %> 
        
    <body>
        <h1>Salary Info</h1>
        <table border="1">
            <tb>
                
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hours %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= pay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><%= otHours %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <tr>
                    <td>PreTax Deduct:</td>
                    <td><%= preTax %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmt %></td>
                </tr>
                
                <tr>
                    <td>Post Tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                
            </tb>
                
        </table>
    </body>
</html>
