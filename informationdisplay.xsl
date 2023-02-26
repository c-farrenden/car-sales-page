<?xml version="1.0" encoding="utf-8"?>

<!-- 
    Filename: informationdisplay.xsl
    Author: Connor Farrenden
    Date: 18/10/21
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html"/>

<xsl:template match = "cars">

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Category Page</title>
        <meta charset="UTF-8"/>
    </head>
    <body>
        <!-- Level 1 heading will display category for type of cars listed -->
        <h1>
            <xsl:for-each select="category">
                <xsl:value-of select="title" />
            </xsl:for-each>
        </h1>
        <!-- Navigation bar -->
        <div class="menu">
            <a href="index.html">HOMEPAGE</a>
            <a href="datacollectionpage.html">CAR LISTING</a>
            <a href="sportscars.xml">SPORTS CARS</a>
            <a href="electriccars.xml">ELECTRIC CARS</a>
            <a href="privacypolicy.html">PRIVACY POLICY</a>
            <a href="termsandconditions.html">TERMS AND CONDITIONS</a>
            <a href="aboutus.html">ABOUT US</a>
            <a href="contact.html">CONTACT US</a>
        </div><br/>
        <!-- Will loop through each car (3 cars) -->
        <xsl:for-each select="car">
        <!-- Sort cars alphabetically by car model -->
        <xsl:sort select="carModel" data-type="text" order="ascending" />
        <!-- Displays value of carModel as heading for car details -->
        <h2>
            <xsl:value-of select="carModel" /><br/>
        </h2>
        <!-- Heading displaying car description -->
        <h3>
            <xsl:text>Description: </xsl:text><br/>
        </h3>
        <!-- Displays value of car description -->
        <xsl:value-of select="description" /><br/>
        <!-- Heading displaying all specs/features of car -->
        <h3>
            <xsl:text>Specs/Features:</xsl:text><br/>
        </h3>
        <!-- Displays value of car make -->
        <b><xsl:text>Make: </xsl:text></b>
        <xsl:value-of select="make"/><br/>
        <!-- Displays value of car year model -->
        <b><xsl:text>Year: </xsl:text></b>
        <xsl:value-of select="yearModel" /><br/>
        <!-- Displays value of car cost -->
        <b><xsl:text>Price: </xsl:text></b>
        <xsl:value-of select="cost" /><br/>
        <!-- Displays value of car torque -->
        <b><xsl:text>Torque: </xsl:text></b>
        <xsl:value-of select="torque" /><br/>
        <!-- Displays value of car power -->
        <b><xsl:text>Power: </xsl:text></b>
        <xsl:value-of select="power" /><br/>
        <!-- Displays value of car cylinders -->
        <b><xsl:text>Cylinders: </xsl:text></b>
        <xsl:value-of select="cylinders" /><br/>
        <!-- Displays value of cars safety rating -->
        <b><xsl:text>Safety Rating: </xsl:text></b>
        <xsl:value-of select="safetyRating" /><br/>
        <!-- Heading listing all car extras -->
        <h3>
            <xsl:text>Extras: </xsl:text><br/>
        </h3>
        <!-- Displays value of bluetooth -->
        <b><xsl:text>Bluetooth: </xsl:text></b>
        <xsl:value-of select="extras/bluetooth" /><br/>
        <!-- Displays value of additional cost -->
        <b><xsl:text>Addtional Cost: </xsl:text></b>
        <xsl:value-of select="extras/additionalCost" /><br/>
        <!-- Displays value of coupon code -->
        <b><xsl:text>Coupon Code: </xsl:text></b>
        <xsl:value-of select="couponCode" /><br/>
        <!-- Heading for review -->
        <h3>
            <xsl:text>Review: </xsl:text><br/>
        </h3>
        <!-- Displays value of reviews for car -->
        <xsl:value-of select="reviews" /><br/><br/>
        <!-- Select and display image for each car -->
        <img alt="Car Image">
            <xsl:attribute name="src">
                <xsl:value-of select="picture"/><br/>
            </xsl:attribute>
        </img><br/><br/>
        <!-- Select and retrieve manufacturer's website for each car -->
        <b><xsl:text>Manufacturer Website: </xsl:text></b>
        <a href="{url}">
            <xsl:value-of select="url" /><br/>
        </a><br/>
        <!-- End loop through car -->     
        </xsl:for-each>
        <!-- Copyright statement -->
        <footer>
            <br/>Connor Farrenden
            <br/><a href="mailto:c3374676@uon.edu.au">c3374676@uon.edu.au</a>
            <br/><a href="https://www.newcastle.edu.au/course/SENG1050">Website Development Team</a>
            <address>Copyright 2021 Jim's Cars</address>
        </footer>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>