<!DOCTYPE html>
<html>
<head>
	<title>multiple Database</title>
</head>
<body>
	<table border="1">
		<h1>Data BD I table menu</h1>
		<tr>
			<th>menu utama</th>
			<th>url</th>
		</tr>
		<?php foreach($db1Data as $db1Data1) { ?>
		<tr>
			<td><?php echo $db1Data1->username ?></td>
			<td><?php echo $db1Data1->email ?></td>
		</tr>
		<?php } ?>
		
	</table>
	<table border="1">
		<h1>Data BD II table admin</h1>
		<tr>
			<th>nama</th>
			<th>email</th>
			<th>username</th>
		</tr>
		<?php foreach($db2Data as $db2Data2) { ?>
		<tr>
			<td><?php echo $db2Data2->userid?></td>
			<td><?php echo $db2Data2->email ?></td>
			<td><?php echo $db2Data2->username ?></td>
		</tr>
		<?php } ?>
		
	</table>
 
</body>
</html>