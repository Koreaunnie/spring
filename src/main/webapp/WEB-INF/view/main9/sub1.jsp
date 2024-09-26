<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%-- element 명 --%>
<h1></h1>
<p></p>
<div></div>

<%-- p+div --%>
<p></p>
<div></div>

<%-- h1+h2+h2--%>
<h1></h1>
<h2></h2>
<h3></h3>

<%-- p>div --%>
<div>
    <p></p>
</div>

<%-- h1>span --%>
<h1>
    <span></span>
</h1>

<%-- # --%>
<%-- h1#head1 --%>
<h1 id="head"></h1>

<%-- h1#head2>p#para1 --%>
<h1 id="head2">
    <p id="para1"></p>
</h1>

<%-- h1#head3>h2#sub1 --%>
<h1 id="head3">
    <h2 id="sub1"></h2>
</h1>

<%-- div#box1 --%>
<div id="box1"></div>

<%-- . --%>
<%-- h1.head --%>
<h1 class="head"></h1>

<%-- h1.head.note --%>
<h1 class="head note"></h1>

<%-- h1#head01.error.note --%>
<h1 id="head01" class="error note"></h1>

<%-- [] --%>
<%-- h1[title] --%>
<h1 title=""></h1>

<%-- h1[title="my head"] --%>
<h1 title="my head"></h1>

<%-- input[value=hello][name="massage"][title="input"] --%>
<input type="text" value="hello" name="massage" title="input">

<%-- * --%>
<%--p*3--%>
<p></p>
<p></p>
<p></p>

<%--tr*2--%>
<tr></tr>
<tr></tr>

<%--table>tr*3>td*4--%>
<table>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
</table>

<%--^--%>
<%--div>h1>span+p--%>
<div>
    <h1>
        <span></span>
        <p></p>
    </h1>
</div>

<%--div>h1>span^p--%>
<div>
    <h1>
        <span></span>
    </h1>
    <p></p>
</div>

<%--table>thead>tr>th*4^^tbody>tr*3>td*4--%>
<table>
    <thead>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    </tbody>
</table>

<%--lorem--%>
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab autem consectetur deleniti dicta dolore dolores eligendi
eum harum inventore magnam obcaecati odit officia optio, quia repellendus sequi sint, tempora voluptatum!

<%--lorem3--%>
Lorem ipsum dolor.

<%--lorem5--%>
Lorem ipsum dolor sit amet.

<%--table>thead>tr>th*4>lorem1^^^tbody>tr*3>th*4>lorem1--%>
<table>
    <thead>
    <tr>
        <th>Lorem.</th>
        <th>Et!</th>
        <th>Quibusdam!</th>
        <th>Minus!</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Illum!</th>
        <th>Vero?</th>
        <th>Sunt!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Saepe!</th>
        <th>Minima!</th>
        <th>Ducimus.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Corporis.</th>
        <th>Asperiores!</th>
        <th>Asperiores!</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Rerum?</th>
        <th>Provident.</th>
        <th>Quasi?</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Sit.</th>
        <th>Dicta!</th>
        <th>Soluta!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Quis.</th>
        <th>Nihil.</th>
        <th>Pariatur.</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Hic?</th>
        <th>Quam!</th>
        <th>Fuga!</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Ex.</th>
        <th>Incidunt.</th>
        <th>Recusandae.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Voluptatem.</th>
        <th>Sapiente.</th>
        <th>Dignissimos.</th>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <th>Lorem.</th>
        <th>Iure.</th>
        <th>Exercitationem!</th>
        <th>Aspernatur.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Voluptates.</th>
        <th>Veritatis.</th>
        <th>Ipsa.</th>
    </tr>
    <tr>
        <th>Lorem.</th>
        <th>Est.</th>
        <th>Dolores.</th>
        <th>Dicta?</th>
    </tr>
    </tbody>
</table>

<%--$--%>
<%--h1#header$*3--%>
<h1 id="header1"></h1>
<h1 id="header2"></h1>
<h1 id="header3"></h1>

<%--h1.note$*3--%>
<h1 class="note1"></h1>
<h1 class="note2"></h1>
<h1 class="note3"></h1>

<%--{}--%>
<%--h1{hello world}--%>
<h1>hello world</h1>

<%--div{$}*5--%>
<div>1</div>
<div>2</div>
<div>3</div>
<div>4</div>
<div>5</div>

<%--()--%>
<%--(h1>p)*3--%>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>
<h1>
    <p></p>
</h1>
</body>
</html>
