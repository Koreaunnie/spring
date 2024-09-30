<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<style>
    .footer {
        display: flex;
        gap: 4px;
        justify-content: center;
        border-top: 1px solid #000;
        padding: 15px;
    }

    .footer-column {
        border-left: 1px solid #000;
        border-right: 1px solid #000;
        padding: 15px;
    }

    .footer-item {
        margin-bottom: 20px;
    }
</style>

<%-- footer --%>
<%--div.footer>div.footer-column*3>div.footer-item*5>lorem1--%>
<div class="footer">
    <div class="footer-column">
        <div class="footer-item">Lorem.</div>
        <div class="footer-item">Id.</div>
        <div class="footer-item">Quo?</div>
        <div class="footer-item">Totam.</div>
        <div class="footer-item">Velit.</div>
    </div>
    <div class="footer-column">
        <div class="footer-item">Lorem.</div>
        <div class="footer-item">Voluptatem.</div>
        <div class="footer-item">Voluptas?</div>
        <div class="footer-item">Mollitia!</div>
        <div class="footer-item">Beatae?</div>
    </div>
    <div class="footer-column">
        <div class="footer-item">Lorem.</div>
        <div class="footer-item">Dolores.</div>
        <div class="footer-item">Voluptatibus!</div>
        <div class="footer-item">Accusamus.</div>
        <div class="footer-item">Consectetur!</div>
    </div>
</div>
