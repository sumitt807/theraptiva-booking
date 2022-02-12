<?php
$files = scandir(__DIR__);
foreach ($files as $file) {
    if ($file != 'admin.php' && $file != '.' && $file != '..') {
        include_once $file;
    }
}
