```html
<!DOCTYPE html> : states that document type is in html

<html> </html> : read file in html

Head tags:
    <head> (adds info about web page)
        <title></title>
    </head>

Body tags:
    <body> (contains contents of the web page)
    </body>
    
Styling (separate with ; )
    * normal : <p>  .......  </p>
    * font size: <p style="font-size: 12px"> ..... </p>
    * font color: <p style="color:red">
    * font color & size: <p style= "color:green; font-size: 12px">
    * font style: <p style=" "font-family: Arial">
    * background color: <p style="background-color: red">
    * aligning text: <p style="text-align:center/left/right">
    * BOLD : <strong> ...... </strong>
    * italicize : <em> ..... </em>
    
Header sizes:
    <h1></h1> BIGGEST
    <h2></h2>
    <h3></h3>
    <h4></h4>
    <h5></h5>
    <h6></h6> smallest

Images/links:
    image only: <img src= "URL"/>
    links only: <a href="URL"> text describing link </a>
    image that is a link: <a href= "URL" ><img src= "URL" />

Ordered lists (Numbered lists)
    <ol>
        <li> wrap </li>
        <li> around </li>
        <li> listed </li>
    </ol>
    
Unordered lists (Bulleted lists)
    <ul>
        <li> bullet one</li>
        <li> bullet two </li>
    </ul>
    
Commenting out
    <!--                    -->
    command + /
    
Tables
    <table>....</table>
    * table row: <tr> ....  </tr> (add rows)
    * table data: <td> ....</td> (add columns)
    * heading for each column: 
        <thead>
            <tr> 
                <th> Name of column #1</th>
                <th> Name of column #2 (same row) </th>
            </tr>
        </thead>
    * actual tabular data: <tbody> ....</tbody>
    
    * borders
        - all around: <table border="1px">
        - no border: style="border-collapse:collapse;"
        - bottom only: style="border-bottom:1px solid black;">
        - left only: style="border-left:1px solid black;"
    * padding: style="padding:5px;"
    * heading for table (colspan):
        <thead>
            <tr> 
                <th colspan="3"> Table title, 3 cells long</th>
            </tr>
        </thead>

Div : divide page into containers(pieces)
    <div>....</div>
    
    * set width, height, color of container: 
        <div style="width:50px; height:50px; background-color:yellow">     </div>
    * set div as link: <a href= "URL"><div>    </div></a>

Span : allows you to contorl styling of smaller parts of page (ie.text)
    <span> </span>
    
    * style with span: <span style="color:red"> ... </span>
    * 
    




```
