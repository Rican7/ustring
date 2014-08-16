--TEST--
Test UString::indexOf
--SKIPIF--
<?php require_once('skipif.inc'); ?>
--FILE--
<?php
$std = "こんにちは世界";

$string = new UString($std, "UTF8");

var_dump($string->indexOf("界"));
var_dump($string->indexOf(new UString("界", "UTF8")));
?>
--EXPECT--
int(6)
int(6)
