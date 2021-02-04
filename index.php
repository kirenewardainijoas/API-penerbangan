<?php 
require __DIR__ . '/vendor/autoload.php';
require 'libs/NotORM.php'; 

use \Slim\App;

$app = new App();

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'jadwal_penerbangan';
$dbmethod = 'mysql:dbname=';

$dsn = $dbmethod.$dbname;
$pdo = new PDO($dsn, $dbuser, $dbpass);
$db  = new NotORM($pdo);

$app-> get('/', function(){
    echo "API Penerbangan";
});

$app ->get('/semuapenumpang', function() use($app, $db){
	$penumpang["error"] = false;
	$penumpang["message"] = "Berhasil mendapatkan data penumpang";
    foreach($db->tb_penumpang() as $data){
        $penumpang['semuapenumpang'][] = array(
            'id' => $data['id'],
            'nama' => $data['nama'],
            'alamat' => $data['alamat'],
            'asal' => $data['asal']
            );
    }
    echo json_encode($penumpang);
});

$app ->get('/penumpang/{nama}', function($request, $response, $args) use($app, $db){
    $penumpang = $db->tb_penumpang()->where('nama',$args['nama']);
    $penumpangdetail = $penumpang->fetch();

    if ($penumpang->count() == 0) {
        $responseJson["error"] = true;
        $responseJson["message"] = "Nama penumpang belum tersedia di database";
        $responseJson["nama"] = null;
        $responseJson["alamat"] = null;
        $responseJson["asal"] = null;
    } else {
        $responseJson["error"] = false;
        $responseJson["message"] = "Berhasil mengambil data";
        $responseJson["nama"] = $dosendetail['nama'];
        $responseJson["alamat"] = $dosendetail['alamat'];
        $responseJson["asal"] = $dosendetail['asal'];
    }

    echo json_encode($responseJson); 
});

$app ->get('/penerbangan', function() use($app, $db){
    if ($db->tb_penerbangan()->count() == 0) {
        $responseJson["error"] = true;
        $responseJson["message"] = "Belum mengambil penerbangan";
    } else {
        $responseJson["error"] = false;
        $responseJson["message"] = "Berhasil mendapatkan data penerbangan";
        foreach($db->tb_penerbangan() as $data){
        $responseJson['semuapenerbangan'][] = array(
            'id' => $data['id'],
            'keberangkatan' => $data['keberangkatan'],
            'tiba' => $data['tiba'],
            'tujuan' => $data['tujuan']
            );
        }
    }
    echo json_encode($responseJson);
});

$app->post('/penerbangan', function($request, $response, $args) use($app, $db){
    $penerbangan = $request->getParams();
    $result = $db->tb_penerbangan->insert($penerbangan);

    $responseJson["error"] = false;
    $responseJson["message"] = "Berhasil menambahkan ke database";
    echo json_encode($responseJson);
});

$app->delete('/penerbangan/{id}', function($request, $response, $args) use($app, $db){
    $penerbangan = $db->tb_penerbangan()->where('id', $args);
    if($penerbangan->fetch()){
        $result = $penerbangan->delete();
        echo json_encode(array(
            "error" => false,
            "message" => "penerbangan berhasil dihapus"));
    }
    else{
        echo json_encode(array(
            "error" => true,
            "message" => "penerbangan dengan ID tersebut tidak ada"));
    }
});

//run App
$app->run();