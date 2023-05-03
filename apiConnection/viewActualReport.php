<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: access");
    header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Allow-Credentials: Content-Type, Authorization, X-Requested-With");
    header("Content-Type: application/json; charset=UTF-8");

    error_reporting(E_ERROR);
    if ($_SERVER['REQUEST_METHOD'] !== 'GET') :
        http_response_code(405);
        echo json_encode([
            'success' => 0,
            'message' => 'Bad Reqeust Detected! Only get method is allowed',
        ]);
        exit;
    endif;

    require 'db_connect.php';
    $database = new Operations();
    $conn = $database->dbConnection();


    $particular_id = null;

    if (isset($_GET['id'])) {
        $particular_id = filter_var($_GET['id'], FILTER_VALIDATE_INT, [
            'options' => [
                'default' => 'all_records',
                'min_range' => 1
            ]
        ]);
        //echo json_encode($particular_id);
    }

    try{

        $sql = is_numeric($particular_id) ? "SELECT  u.name, a.count
                    FROM `actualreportbytotal_tbl` a 
                    INNER JOIN `user_tbl` u ON u.user_id = a.user_id 
                    WHERE a.particular_id = '$particular_id'" : "SELECT COUNT(*) AS total_count FROM `actualreportbytotal_tbl`";
        $stmt = $conn->prepare($sql);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {

            $data = null;

            if (is_numeric($particular_id)) {

                $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
                echo json_encode($data);

            } else {

                $data = $stmt->fetch(PDO::FETCH_ASSOC);
                $count = $data['total_count'];
                echo json_encode($count);

            }
        } else {

            echo json_encode([
                'success' => 0,
                'message' => 'No Record Found!',
            ]);
            
        }
        
    } catch (PDOException $e) {
        http_response_code(500);
        echo json_encode([
            'success' => 0,
            'message' => $e->getMessage()
        ]);
        exit;
    }

?>