<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Order Received</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .order-received-container {
            margin-top: 50px;
            padding: 40px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .order-received-container h2 {
            color: #28a745;
            font-weight: bold;
        }
        .order-received-container h3 {
            color: #343a40;
            margin-bottom: 20px;
        }
        .order-received-container p {
            color: #6c757d;
            font-size: 1.1rem;
        }
        .order-received-container .btn-continue {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 1.2rem;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .order-received-container .btn-continue:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@include file="components/navBarComponent.jsp" %>
    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="order-received-container">
                    <h2>YOUR ORDER HAS BEEN RECEIVED</h2>
                    <h3>Thank you for your payment, it's processing</h3>
                    <p>You will receive an order confirmation email with details of your order and a link to track your process.</p>
                    <a href="home" class="btn btn-continue">CONTINUE</a>
                </div>
            </div>
        </div>
    </div>
    <%@include file="components/footerComponent.jsp" %>
</body>
</html>
