
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
        
        <link rel = "stylesheet"
   type = "text/css"
   href = "calculatorStyle.css" />
        
    </head>
    <body>
        
        <h1>Simple Salary Calculator</h1>
        
        <form name="Calculator" action="results.jsp" method="post">
            
            <table border="1">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="int" name="hours" value="" size="5" required</td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="int" name="pay" value="" size="5" required</td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="int" name="preTax" value="" size="5" required</td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="int" name="postTax" value="" size="5" required</td>
                    </tr>
                    
                </tbody>
                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="Submit">
        </form>
        
        
    </body>
</html>
