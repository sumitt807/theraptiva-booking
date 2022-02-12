<?php

if (!function_exists('pr')) {
    function pr($data = array())
    {
        echo '<pre>';
        print_r($data);
        echo '</pre>';
    }
}
