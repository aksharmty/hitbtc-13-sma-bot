<meta http-equiv="refresh" content="10; url=#" />
<body style="background-color:#000000; color:white;">
<?php 
include "connect.php";
define('TIMEZONE', 'Asia/kolkata');
date_default_timezone_set(TIMEZONE);
  $date = DATE("Y-m-d H:i:s");
  $keyapi = 'HITBTC_API_KEY:SECRET_KEY'; //wrtite your api key
$askup00 = "SELECT * FROM trade where type !='1' order by id desc limit 1";
$result00 = $connection->query($askup00);
if ($result00->num_rows > 0) {
 while($r0=$result00->fetch_assoc()) 
 { echo "typo check ".$typo; $coin1 = $r0['currency'];}
} else {     
$coinsql = "SELECT * FROM coin where ch = '1' order by id desc limit 1";
$coinsqlresult = $connection->query($coinsql);
if ($coinsqlresult->num_rows > 0) {
  // output data of each row
  while($row0 = $coinsqlresult->fetch_assoc()) {
    $coin1 = $row0["coin"];$preq = $row0["quantity"]; $coin1ch = $row0["ch"]; $coin1son =$row0["son"]; $market1=$row0["market"]; echo "id: " . $row0["id"]. " - Coin1: " . $row0["coin"]. " - market1: " . $row0["market"]. " " . $row0["ch"]. "<br>";
  //  $coinsqlup0 = mysqli_query($connection,"update coin set ch ='0' where coin ='$coin1'");
}
} else {  echo "0 results"; $coinsqlup = mysqli_query($connection,"update coin set ch ='1'"); } 
}
echo "coin : " .$coin1  ."<br>"; 

$askup0 = mysqli_fetch_array(mysqli_query($connection,"select * from trade where currency ='$coin1' order by id desc limit 1"));
$typ0 = $askup0['type'];
$coin0 = $askup0['currency'];
$market0 = $askup0['mrk'];
if($typ0 == "0"){ echo "booked";$coin = $coin0; $market = $market0; $coin1son ="1";}else{echo "new"; $coin = $coin1 ; $market = $market1;} 
echo "<br> typ0 ".$typ0 . " coin ".$coin . " market " . $market0 ." coin1 " . $coin2.$market ."<br>";
//$quantity = $coinsql['quantity'];
$pair = $coin.$market;
echo "pair : ",$pair; 

$balurl = 'https://api.hitbtc.com/api/2/trading/balance';
$orderurl = 'https://api.hitbtc.com/api/2/order';
$tickerurl = "https://api.hitbtc.com/api/2/public/ticker/$pair";
$urlcan = "https://api.hitbtc.com/api/2/public/candles/$pair?period=M30&sort=DESC&limit=50";

$sql123 = mysqli_query($connection,"TRUNCATE TABLE candle");
$curlcan = curl_init();
curl_setopt($curlcan, CURLOPT_URL, $urlcan);
curl_setopt($curlcan, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curlcan, CURLOPT_HEADER, false);
$datacan = curl_exec($curlcan);
curl_close($curlcan);
//print_r($datacan);
$arraycan=json_decode($datacan, true);
  //$array = json_decode($data, true); //Convert JSON String into PHP Array
 echo " Conison ".$coin1son;
 foreach($arraycan as $row) //Extract the Array Values by using Foreach Loop
          { 
              if($coin1son == "1" ){ 
      $query = mysqli_query($connection,"INSERT INTO candle(open,close,min,max,timestamp) VALUES ('".$row["open"]."','".$row["close"]."','".$row["min"]."','".$row["max"]."','".$row["timestamp"]."'); "); 
          }}
?>
<?php 
//market bal
 $chbal = curl_init($balurl); 
 curl_setopt($chbal, CURLOPT_USERPWD, $keyapi); // API AND KEY
 curl_setopt($chbal, CURLOPT_RETURNTRANSFER,1);
 curl_setopt($chbal, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
curl_setopt($chbal, CURLOPT_HTTPHEADER, array('accept: application/json'));
 $return = curl_exec($chbal); 
  curl_close($chbal); 
 //print_r($return);
$data = json_decode($return, true);
$need = array(  //1 =>'DOGE',
    $market
);
foreach ($data as $key => $value) {//Extract the Array Values by using Foreach Loop
          if (in_array($data[$key]['currency'], $need)) {
              $marketbalance=$data[$key]['available'];
          }}
echo "<br> market bal : ", $market . ':' . $marketbalance;
 //coin bal 
$need0 = array(    //1 =>'DOGE',
    $coin
);
foreach ($data as $key => $value) {
          if (in_array($data[$key]['currency'], $need0)) {
              $coinbalance=$data[$key]['available'];
              $reserved = $data[$key]['reserved'];
          }}
          echo " coin bal : ",$coin . ':' . $coinbalance;
?>
<?php
//ask - bid check
$urlask = ($tickerurl);
$curlask = curl_init();
curl_setopt($curlask, CURLOPT_URL, $urlask);
curl_setopt($curlask, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curlask, CURLOPT_HEADER, false);
$dataask = curl_exec($curlask);
curl_close($curlask);
//print_r($dataask);
$ass=json_decode($dataask, true);
$ask=$ass['ask'];
$bid=$ass['bid'];
echo "<br>ASK : ", $ask . " BID " . $bid ."<br>";
?>
<?php
$ma900 = mysqli_fetch_assoc(mysqli_query($connection,"select avg(close) as ma901 from candle where id between 1 AND 13"));
$ma9=number_format($ma900['ma901'],9,".",""); echo " <br>Ma13 ".$ma9;

//$ma200 = mysqli_fetch_assoc(mysqli_query($connection,"select avg(close) as ma201 from candle where id between 1 AND 20"));
//$ma20=number_format($ma200['ma201'],9,".",""); echo " <br>Ma20 ".$ma20;

?>
<br>---------------------------------------------------<br>
<?php
$lastcan = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM candle where id ='2'"));
echo "<br> lastbar bar ";
if($lastcan['open'] < $lastcan['close']){ $colorcu0="green"; $can2 = $lastcan['close'];}else{$colorcu0="red";}
echo "<font color ='$colorcu0'>";
$lastid = $lastcan['id']; echo "<br> id ". $lastid;
$lastclose = $lastcan['close']; echo "<br> close ". $lastclose;
$lastopen = $lastcan['open'];   echo "<br> open ".$lastopen;
$lastmin = $lastcan['min'];     echo "<br> min ". $lastmin;
$lastmax = $lastcan['max'];     echo "<br> max ". $lastmax;
echo "</font>";
echo "<br> current bar ";
$cucan = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM candle where id='1'"));
if($cucan['open'] < $cucan['close']){ $colorcu="green";}else{$colorcu="red";}
echo "<font color ='$colorcu'>";
$cuid = $cucan['id']; echo "<br>cu id ". $cuid;
$cuopen = $cucan['open']; echo "<br>cu open ". $cuopen;
$cuclose = $cucan['close']; echo "<br>cu close ". $cuclose;
$cumax = $cucan['max']; echo "<br>cu max ". $cumax;
echo "</font>";
?>
<br>---------------------------<br>
<?php
//vol and quantity
// risk management
$mp = number_format($marketbalance-$marketbalance*80/100,10,".","");
echo "<br> fund for this trade use ".$market ." = ".$mp;
$qq = $mp/$ask/1; //echo "qq " .$qq;
$quanti = floor($qq/$preq)*$preq;
$quantityn = number_format($quanti,11,".","");
echo "<br>Buy Qq ", $quantityn; 

?>
<?php
echo "<br>Buy price : ". $ask;
$buy = $ask;
$sell0 = $buy+$buy*0.25/100;
$sellprice = number_format($sell0,11, ".", ""); echo "<br>sellprice :",$sellprice;
?>
<?php
$idu = $askup0['id']; echo "<br>idu :" , $idu;
$hmas = $askup0['hmas']; echo "<br>hmas :" , $hmas; 
$typ = $askup0['type']; echo "<br>typ :" , $typ;
$dlastbal = $askup0['dlastbal']; echo "<br>dlastbal :" , $dlastbal;
$lastbal = $askup0['lastbal']; echo "<br>lastbal :" , $lastbal;
$lastprice = $askup0['price']; echo "<br>lastprice :" , $lastprice;
$waitprice = number_format($lastprice-$lastprice*5/100,11,".",""); echo "<br>waitprice :" , $waitprice;
$buycid=$askup0['clientOrderId']; echo "<br>buycid :" , $buycid;
$sellcid=$askup0['sellcid']; echo "<br>sellcid :" , $sellcid;
$sellprice0=$askup0['sellprice']; echo "<br>sellprice0 :" , $sellprice0;
$ba=$askup0['ba']; echo "<br>ba :" , $ba;
$sa=$askup0['sa']; echo "<br>sa :" , $sa;

$count0 = mysqli_fetch_assoc(mysqli_query($connection,"select count(type) as count from trade where pair = '$pair' AND type = '0'"));
$count = $count0['count']; echo " <br>count ".$count; 
$levelqu = $lastqu*2;
if($count > 0){ $quantity = $levelqu; } else { $quantity = $quantityn; }
echo "<br> quantity ". $quantity;
$btcl = $quantity*$buy; $btclow = number_format($btcl,11);
echo "<br>btc low :",$btclow;
    
?>
<?php
// buy average cal
if($ba != 1){ $avgcid = $buycid; $basa = "ON";}
if($sellcid != "0" && $sa != 1){$avgcid = $sellcid; $basa = "ON"; echo " <br>basa sell";}
if($basa == "ON"){ echo " onnnn";
$cht = curl_init("https://api.hitbtc.com/api/2/history/order?clientOrderId=$avgcid"); 
 curl_setopt($cht, CURLOPT_USERPWD, $keyapi);// API AND KEY
 curl_setopt($cht, CURLOPT_RETURNTRANSFER,1);
 curl_setopt($cht, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
curl_setopt($cht, CURLOPT_HTTPHEADER, array('accept: application/json'));
 $returnt = curl_exec($cht); 
  curl_close($cht); 
$tavg = json_decode($returnt, true); //Convert JSON String into PHP Array
foreach($tavg as $ravg) //Extract the Array Values by using Foreach Loop
          {
              $fcost=$ravg['avgPrice'];
          echo ".$ravg[clientOrderId].";
          echo ".$ravg[side].";
          echo "avg price :", $fcost;
          $fcost1=$ravg['price']; echo "avg price1 :", $fcost1;
           
          
          }
$fsellprice = number_format($fcost+$fcost*0.25/100,11,".",""); echo "<br> fsellcost ".$fsellprice . "<br>";

//avgprice end 
if($ba != 1){ echo " open ba ";
 $fcostup = mysqli_query($connection,"update trade set price = '$fcost' , sellprice ='$fsellprice', ba ='1'  where id = '$idu'"); }else{  echo " price no need update"; }
if($sellcid != "0" && $sa != 1){ echo " open sa "; 
 $fcostup0 = mysqli_query($connection,"update trade set sell ='$fcost1', sa = '1' where id = '$idu'"); }else{  echo " *** sell price no need update"; }
}
?>
<?php
$trigger = $askup0['ask'];
echo "trigger up " . $askup0['ask'];
if($lastmax > $ma9){ $trigon = "ON";}
if($ma9 < $lastmax && $lastmax < $trigger){ $trigon = "ON";}
if($trigon == "ON"){ echo "<br> trigger up ";
$triggerup = mysqli_query($connection,"update trade set ask = '$lastmax' where pair = '$pair' AND id = '$idu'");
} 
if($ma9 > $lastmax && $trigger > 0){ echo "<br> trigger up 0";
$triggerup = mysqli_query($connection,"update trade set ask = '0' where pair = '$pair' AND id = '$idu'");
}
?>

<?php 
echo "<br>Buy SIDE<br>";
   //buy code 
if($count < 3){   
if($lastclose > $ma9 && $cuopen > $lastclose && $cuclose > $lastmax){ echo "<br>Up Buy Trand start"; 
// buy code start
$symbol = "$pair";
$type = "market"; //"limit";
//$price = "$buy";
$quantityb="$quantity";
if($trigger <= $cuclose && $trigger > 0){ echo "trigger ok<br>";
//if($price > "0.000000001"){ echo "buy price check<br>";
if($marketbalance > $btclow){ echo "buy fund enough";
if($count > 0 && $waitprice < $lastclose){ $hmas1 = "WAIT";} else { $hmas1 = $hmas;}
if($typ == "1" && $hmas1 =="1"){ echo "type 1 ok";

$ch = curl_init();
//do a post
curl_setopt($ch,CURLOPT_URL,$orderurl);
curl_setopt($ch, CURLOPT_USERPWD, $keyapi); // API AND KEY 
curl_setopt($ch, CURLOPT_POST,1);
//curl_setopt($ch,CURLOPT_POSTFIELDS,"symbol=$symbol&side=buy&price=$price&quantity=$quantityb&type=$type&timeInForce=GTC");
curl_setopt($ch,CURLOPT_POSTFIELDS,"symbol=$symbol&side=buy&quantity=$quantityb&type=$type&timeInForce=GTC");
curl_setopt($ch, CURLOPT_RETURNTRANSFER,1);
  //return the result of curl_exec,instead
  //of outputting it directly
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
curl_setopt($ch, CURLOPT_HTTPHEADER, array('accept: application/json'));
//curl_setopt($ch,CURLOPT_HTTPHEADER,$header);
$result=curl_exec($ch);
curl_close($ch);
//$result=json_decode($result);
//echo"<pre>";
//print_r($result);
//order buy end
$sita=json_decode($result, true);

$ids=$sita['id'];
$sideask=$sita['side'];
$priceask=$sita['price'];
$quantity123=$sita['quantity'];
$bid123=$sita['clientOrderId'];
echo "sita"; echo "$ids"; 
//insert order details

if($quantity123 == $quantityb) { echo "buy quantity :", $quantity123 . " - ". $quantityb;
$query = mysqli_query($connection,"INSERT INTO trade(price,sellprice,quantity,date,type,lastbal,currency,pair,dlastbal,hmas,mrk,clientOrderId,sellcid,ba,sa) VALUES ('$ask','$sellprice','$quantityb','$date','0','$coinbalance','$coin','$pair','$marketbalance','NA','$market','$bid123','0','0','0')"); 
//buy end 
$hmasup0 = mysqli_query($connection,"update trade set hmas = '3' where hmas = '1'");
}else {echo "<br>Someting wrong , order not store in database ";}
} else {echo "<br>waiting for new buy trand";}
} else {echo "<br>Buy Balance low"; $hmaup = mysqli_query($connection,"update tradebtc set hmas = 'FUND MISSING' , ask ='0' where pair = '$pair' AND id = '$idu'");}
} else {echo "<br>trigger 0";}
} else {echo "Buy trand off";}
} else {echo "last 3 order not done";}
?>  
//
<?PHP
$ls0 = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM trade where pair='$pair' AND type = '0' order by id desc limit 1"));
$idls0 = $ls0['id']; echo "<br> idls0 ". $idls0;
$pricels0 = $ls0["price"]; echo "<br> price ls0 ". $pricels0;
$quantityls0 = $ls0["quantity"]; echo "<br> quantity ls0 ". $quantityls0;
$tc0 = $pricels0*$quantityls0; echo "<br> tc0 ". $tc0;

$ls1 = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM trade where pair='$pair' AND type = '0' AND id < '$idls0' order by id desc limit 1"));
$idls1 = $ls1['id']; echo "<br> idls1 ". $idls1;
$pricels1 = $ls1["price"]; echo "<br> price ls1 ". $pricels1;
$quantityls1 = $ls1["quantity"]; echo "<br> quantity ls1 ". $quantityls1;
$tc1 = $pricels1*$quantityls1; echo "<br> tc1 ". $tc1;

$ls2 = mysqli_fetch_assoc(mysqli_query($connection,"SELECT * FROM trade where pair='$pair' AND type = '0' AND id < '$idls1' order by id desc limit 1"));
$idls2 = $ls2['id']; echo "<br> idls2 ". $idls2;
$pricels2 = $ls2["price"]; echo "<br> price ls2 ". $pricels2;
$quantityls2 = $ls2["quantity"]; echo "<br> quantity ls2 ". $quantityls2;
$tc2 = $pricels2*$quantityls2; echo "<br> tc2 ". $tc2;

$tc = $tc0+$tc1+$tc2; echo " tc ". $tc;
$tq = $quantityls0+$quantityls1+$quantityls2; echo " total quantity ". $tq;
if($tq > 0){
 $avprice = $tc/$tq; echo " total avg price ". $avprice;}
 $nsell = $avprice+$avprice*0.25/100; echo " new sell price ". $nsell;

?>
<?php 
//sell trand
$sql1 = "SELECT * FROM trade where pair='$pair' AND type ='0' order by price asc limit 1";
$resulttrady = $connection->query($sql1);

if ($resulttrady->num_rows > 0) {
echo "<br>******<br> sell Trand <br>";
echo "type 0 for sell ";
while($row = $resulttrady->fetch_assoc()) {
    $id = $row["id"]; $pairs = $row["pair"]; $sellprice0 = $row["sellprice"]; $quantitysfirst = $row["quantity"];  
    
$pricesell =$row["price"];
if($cuclose < $nsell){ $quantitys = $quantitysfirst; $sellpre = $sellprice0;} else { $quantitys = $tq; $sellpre = $nsell;} 

    echo "<br> id: " . $id. " - pairs: " . $pairs. " price " . $pricesell. " min sell price " . $sellprice0. " sell quantity " . $quantitys. "<br>";
 
}
echo "sell :<br>";
$symbol = "$pairs";
$type = "limit";
$price1 = "$sellpre";
$quantitys= "$quantitys"; echo " symbol ". $symbol . " type " . $type . " price1 ". $price1  . " quantitys  ". $quantitys;
if($ma9 >= $lastclose && $cuclose <= $lastmin){ echo "price sell check<br>";
if($price1 > "0.00000001" && $presell < $bid){ echo "sell price check<br>";
if($coinbalance >= $quantitys){ echo "sell fund enough";

$ch1 = curl_init();
//do a post
curl_setopt($ch1,CURLOPT_URL,$orderurl);
curl_setopt($ch1, CURLOPT_USERPWD, $keyapi); // API AND KEY
curl_setopt($ch1, CURLOPT_POST,1);
curl_setopt($ch1,CURLOPT_POSTFIELDS,"symbol=$symbol&side=sell&price=$price1&quantity=$quantitys&type=$type&timeInForce=GTC");
curl_setopt($ch1, CURLOPT_RETURNTRANSFER,1);
  //return the result of curl_exec,instead
  //of outputting it directly
curl_setopt($ch1, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
curl_setopt($ch1, CURLOPT_HTTPHEADER, array('accept: application/json'));
$result1=curl_exec($ch1);
curl_close($ch1);

//order end
   $kali=json_decode($result1, true);

$prices=$kali['price'];
$quantitys1=$kali['quantity'];
$bid124=$kali['clientOrderId'];
 echo " sell on";
//insert order details

//if ($quantitys == $quantitys1){ echo "sell by kali";
if($quantitys1 > 0){ 
echo "sell order", $bid124;
if($cuclose < $nsell){ $querysellup = mysqli_query($connection,"update trade set type ='1' , sell ='$sell', selldate='$date', sellcid = '$bid124'  where pair ='$pair' AND id = '$id'");} else { $querysellup = mysqli_query($connection,"update trade set type ='1' , sell ='$sell', selldate='$date', sellcid = '$bid124'  where pair ='$pair'");} 

}
//sell end
} else {echo "<br>sell balance low";}
} else {echo "<br>wrong price";}
} else {echo "<br>sell trand off";}
} else { echo "<br>sell data not found "; }

?>
<?php
if($lastclose < $ma9 && $lastclose > $lastopen && $lastmin > $cuclose){ echo "<br> hmas open ";
$hmasup = mysqli_query($connection,"update trade set hmas = '1' , ask ='0' where pair = '$pair' AND id = '$idu'");
}
?>
