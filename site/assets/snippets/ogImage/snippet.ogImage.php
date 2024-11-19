<?php
if(!defined('MODX_BASE_PATH')) die('What are you doing? Get out of here!');

$object = $modx->documentObject;
$ID = $object['id'];
$img = $object['imageSoc'][1];
$out = "";
if(is_file(MODX_BASE_PATH . $img)):
	$og_1 = $modx->runSnippet('thumb', array(
		'input'		=> $img,
		'options'	=> 'w=510,h=300,f=jpg,zc=C'
	));
	$out = '
		<meta itemprop="image" content="' . $og_1 . '">';
	$out .= '
		<meta property="og:image" content="' . $og_1 . '">';
	$out .= '
		<meta property="og:image:width" content="510">';
	$out .= '
		<meta property="og:image:height" content="300">';
	$out .= '
		<meta property="og:image:type" content="image/jpeg">';
	return $out;
endif;
return $out;