<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Hóa đơn</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f8f8;
            font-family: Arial, sans-serif;
            font-size: 14px;
            line-height: 1.5;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: #fff;
            border: 1px solid #ccc;
            margin: 20px auto;
            max-width: 800px;
            padding: 20px;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
            vertical-align: top;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .total {
            margin-top: 20px;
            text-align: right;
        }

        .total label {
            font-weight: bold;
            margin-right: 10px;
        }

        .total span {
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<form action="/product/bill">
    <div class="container">
        <h1>Hóa đơn</h1>
        <table>
            <thead>
            <tr>
                <th>#</th>
                <th>Sản phẩm</th>
                <th>Số lượng</th>
                <th>Đơn giá</th>
                <th>Thành tiền</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${sanPhamTrongGio}" var="item" varStatus="i">
                <tr>
                    <th>${i.index+1}</th>
                    <td>${item.name}</td>
                    <td>${item.qty}</td>
                    <td>${item.price} ₫</td>
                    <td>${item.qty*item.price} ₫</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="total">
            <label>Tổng cộng:</label>
            <span>${total} đ</span>
        </div>
    </div>
    <h4 style="text-align: center">Cảm ơn quý khách đã mua hàng</h4>
    <a href="/product/list" class="alert alert-light" style="position: absolute;left: 0px;top: 0px">Quay trở lại trang chủ</a>
</form>
</body>
</html>
