<?php
// $command=`Client.py -u sopyan`;
// $command='whoami';
$command='python3 /var/www/html/portal/application/controllers/Client.py -u S169 -p 1234  -s 192.168.60.138 -m reg';
$return=shell_exec($command);
var_dump($return);
?>
