<?php 

$mysqli = new mysqli("ftpdev.mastersofthouse.app.br","devmastersofthouse","Soares150816@@","geonames");

if ($mysqli->connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli->connect_error;
  exit();
}
  
// $countries = file_get_contents('https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/countries.json');
// $states = file_get_contents('https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/states.json');
// $cities = file_get_contents('https://raw.githubusercontent.com/dr5hn/countries-states-cities-database/master/cities.json');

// file_put_contents('countries.json', $countries);
// file_put_contents('states.json', $states);
// file_put_contents('cities.json', $cities);


// $countries = json_decode($countries);
// $states = json_decode($states);
// $cities = json_decode($cities);


$countriesArray = [];
$statesArray = [];
$citiesArray = [];

// foreach ($countries as $key) {
    
//     $name = $key->name . ' - ' . $key->iso2;
//     $name = mb_strtoupper($name);
//     $stmt =$mysqli->prepare("INSERT INTO countries (name, phone_code, currency_symbol) VALUES (?,?,?)");
//     $stmt->bind_param('sss', $name, $key->phone_code, $key->currency_symbol);
//     $stmt->execute();

// }

// foreach ($states as $key) {
    
//     $name = $key->name . ' - ' . $key->state_code;
//     $name = mb_strtoupper($name);
    
//     $stmt =$mysqli->prepare("INSERT INTO states (name, country_code) VALUES (?,?)");
//     $stmt->bind_param('ss', $name, $key->country_code);
//     $stmt->execute();
// }

// foreach ($cities as $key) {
    
//     $name = $key->name ;
//     $name = mb_strtoupper($name);
//     $stmt =$mysqli->prepare("INSERT INTO cities (name, state_code, country_code) VALUES (?,?,?)");
//     $stmt->bind_param('sss', $name, $key->state_code, $key->country_code);
//     $stmt->execute();

// }

$sqlCountries = "SELECT * FROM countries ORDER BY name ASC";
$sqlStates = "SELECT * FROM states ORDER BY country_code,name ASC";
$sqlCities = "SELECT * FROM cities ORDER BY state_code,name ASC";

if ($result = $mysqli->query($sqlCountries)) {
  while ($row = $result->fetch_object()) {
    $countriesArray[] = $row;
  }
  
  $result->free_result();
}

if ($result = $mysqli->query($sqlStates)) {
  while ($row = $result->fetch_object()) {
    $statesArray[$row->country_code][] = $row;
  }
  
  $result->free_result();
}

if ($result = $mysqli->query($sqlCities)) {
  while ($row = $result->fetch_object()) {
    $citiesArray[$row->country_code][$row->state_code][] = $row;
  }
  
  $result -> free_result();
}

if(!file_exists(__DIR__.'/build')){
  mkdir(__DIR__.'/build');
}

if(!file_exists(__DIR__.'/build/states')){
  mkdir(__DIR__.'/build/states');
}

if(!file_exists(__DIR__.'/build/cities')){
  mkdir(__DIR__.'/build/cities');
}

file_put_contents(__DIR__.'/build/countries.json', json_encode($countriesArray, JSON_UNESCAPED_UNICODE));


foreach ($statesArray as $key => $value) {
  file_put_contents(__DIR__.'/build/states/'.$key.'.json', json_encode($value, JSON_UNESCAPED_UNICODE));
}

foreach ($citiesArray as $key => $value) {
  foreach ($value as $k => $v) {
    if(!file_exists(__DIR__.'/build/cities/' .$key)){
      mkdir(__DIR__.'/build/cities/' .$key);
    }
    file_put_contents(__DIR__.'/build/cities/'.$key .'/'. $k . '.json', json_encode($v, JSON_UNESCAPED_UNICODE));
  }
}

exit();

?>