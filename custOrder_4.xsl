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
            <th>Company Name</th>
            <th>Contact Name</th>
            <th>Contact Title</th>
            <th>Phone</th>
            <th>Fax</th>
            <th>Address</th>

            </tr>
            <xsl:for-each select="Root/Customers/Customer">
               <tr>
               <td><xsl:value-of select="CompanyName"/></td>
                <td><xsl:value-of select="ContactName"/></td>
                <td><xsl:value-of select="ContactTitle"/></td>
                <td><xsl:value-of select="Phone"/></td>
                <td><xsl:value-of select="Fax"/></td>
                <td>
                  <xsl:for-each select="FullAddress">
                     <span><xsl:value-of select="Address"/>, </span>
                     <span><xsl:value-of select="City"/>, </span>
                     <span><xsl:value-of select="Region"/>, </span>
                     <span><xsl:value-of select="PostalCode"/>, </span>
                     <span><xsl:value-of select="Country"/></span>
                     <br/>
                   </xsl:for-each>
                  </td>
               </tr>
            </xsl:for-each>
         </table>
         </body>
      </html>
   </xsl:template>
</xsl:stylesheet>
