<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--/*********************************************************************************************** 
*  ITC5202 – Project 1 
*	I declare that this assignment is my own work in accordance with Humber Academic Policy.   
*	No part of this assignment has been copied manually or electronically from any other source 
*	(including web sites) or distributed to other students. 
*  
*	Name: Moanisha Velayuthem            Student ID: N01482302                       Date:28/02/2022 
* 
**********************************************************************************************/  -->
   <xsl:template match="/">

      <html>
         <head>
            <title>Title of the page</title>
         </head>
         <body>
         <table border='1'>
          <tr>
            <th>Customer ID</th>
            <th>Employee ID</th>
            <th>Order Date</th>
            <th>Required Date</th>

            </tr>
            <xsl:for-each select="Root/Orders/Order">
            <xsl:if test="ShipInfo[(@ShippedDate)]">
               <tr>
               <td><xsl:value-of select="@CustomerID"/></td>
                <td><xsl:value-of select="EmployeeID"/></td>
                <td><xsl:value-of select="OrderDate"/></td>
                <td><xsl:value-of select="RequiredDate"/></td>
               </tr>
               </xsl:if>
            <xsl:if test="ShipInfo[not(@ShippedDate)]">
               <tr style="color:red;">
               <td><xsl:value-of select="@CustomerID"/></td>
                <td><xsl:value-of select="EmployeeID"/></td>
                <td><xsl:value-of select="OrderDate"/></td>
                <td><xsl:value-of select="RequiredDate"/></td>
               </tr>
               </xsl:if>
            </xsl:for-each>
         </table>
         </body>

      </html>
   </xsl:template>

</xsl:stylesheet>
