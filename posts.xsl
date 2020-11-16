<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head>
<style>
* {
  box-sizing: border-box;
}

/* Add a gray background color with some padding */
body {
  font-family: Arial;
  padding: 20px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  font-size: 40px;
  text-align: center;
  background: white;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {   
  float: left;
  width: 75%;
}

/* Right column */
.rightcolumn {
  float: left;
  width: 25%;
  padding-left: 20px;
}

/* Fake image */
.fakeimg {
  background-color: #aaa;
  width: 100%;
  padding: 20px;
}

/* Add a card effect for articles */
.card {
   background-color: white;
   padding: 20px;
   margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}
</style>
</head>
<body>

<div class="header">
  <h2>POSTS</h2>
</div>

<div class="row">
  <div class="leftcolumn">
    <xsl:for-each select="Social_Network/Post">
    <div class="card">
      <h2><xsl:value-of select="@user_name"/></h2>
      <h5><xsl:value-of select="Date"/></h5>
      <p><xsl:value-of select="Text"/></p>
      <img src="{Image}"/>
      <h5>Likes</h5>
      <xsl:for-each select="Like/UName">
      <p><xsl:value-of select="@name"/></p>
      </xsl:for-each>
      
    </div>
    </xsl:for-each>
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>Krishna</h2>
      <img src="krishna.jpg"/>
      <p>Nature Lover</p>
    </div>
    <div class="card">
        <h3>Following</h3>
        <div class="fakeimg">Radha</div>
        <div class="fakeimg">Vishnu</div>
      </div>
    <div class="card">
      <h3>Followers</h3>
      <div class="fakeimg">Radha</div>
      <div class="fakeimg">Vishnu</div>
    </div>
    <div class="card">
      <h3>Logout</h3>
    </div>
  </div>
</div>

<div class="footer">
  <h2>Thanks For Using Our Website</h2>
</div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
