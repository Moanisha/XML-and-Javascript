<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
               <td><xsl:value-of select="CustomerID"/></td>
                <td><xsl:value-of select="EmployeeID"/></td>
                <td><xsl:value-of select="OrderDate"/></td>
                <td><xsl:value-of select="RequiredDate"/></td>
               </tr>
               </xsl:if>
            <xsl:if test="ShipInfo[not(@ShippedDate)]">
               <tr style="color:red;">
               <td><xsl:value-of select="CustomerID"/></td>
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
