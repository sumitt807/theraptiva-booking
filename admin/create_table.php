<?php

register_activation_hook(TP_FILE, 'myPluginCreateTable');
function myPluginCreateTable()
{
    global $wpdb;
    $charset_collate = $wpdb->get_charset_collate();
    $table_name = $wpdb->prefix . 'customtable';
    $sql = "CREATE TABLE `$table_name` (
        `id` int(11) NOT NULL,
        `column2` varchar(220) DEFAULT NULL,
        `column3` varchar(220) DEFAULT NULL,
        `column6` varchar(220) DEFAULT NULL,
        `column4` int(11) DEFAULT '1',
        PRIMARY KEY(id)
        ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
    ";
    if ($wpdb->get_var("SHOW TABLES LIKE '$table_name'") != $table_name) {
        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($sql);
    }
}
