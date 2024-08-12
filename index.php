<?php
session_start();

require_once('user_funcs.php');
$pdo = db_con();

$userID = $_SESSION['chk_ssid'];
$sessionID = session_ID();
$kanriFlg = $_SESSION['kanri']
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>main menu</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
        .navbar-default{
            background-color: #3366FF;
            border-color: #3366FF;
        }
        .nav-right{
            display: flex;
            justify-content: flex-end; /* アイテムを右端に寄せる */
            width: 100%;
        }
        .title{
            display: flex;
            justify-content: center;
        }
    </style>
</head>

<body>
    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid nav-right">
                <?php if (isset($kanriFlg) && ($kanriFlg === 1)): ?>
                    <div class="navbar-header"><a class="navbar-brand" href="user_select.php">ユーザー一覧</a></div>
                <?php endif; ?>
                <?php if (isset($kanriFlg) && ($kanriFlg === 0 || $kanriFlg === 1)): ?>
                    <div class="navbar-header"><a class="navbar-brand" href="bm_select.php">スタート</a></div>
                <?php endif; ?>
                <?php if (!isset($kanriFlg)): ?>   
                    <div class="navbar-header"><a class="navbar-brand" href="login.php">ログイン</a></div>
                <?php endif; ?>
                    <div class="navbar-header"><a class="navbar-brand" href="logout.php">ログアウト</a></div>
                
            </div>
        </nav>
    </header>

       
    <div class="title">行った国を記録し、写真を管理するサイト</div>


    <!-- Head[End] -->

    <!-- Main[Start] -->

    <!-- Main[End] -->
</body>

</html>
