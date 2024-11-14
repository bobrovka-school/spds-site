<?php
if (!defined('MODX_BASE_PATH')) {
	http_response_code(403);
	die('For'); 
}
use ProjectSoft\Video;
$e =& $modx->event;
$params = $e->params;
$regexp = '/^((?:https?:\/\/(?:www\.)?(?:rutube|youtube|youtu)\.(?:com|ru)\/))/i';
if(!function_exists("readVideoRequest")):
	function readVideoRequest($arr){
		return json_encode($arr);

	}
	function findArray ($ar){
		
	}
endif;
switch ($e->name) {
	case 'OnBeforeDocFormSave':
		/**
		 * Создаём Video с включённым автосохранением перевьюшек
		 * Старые Изображения перезаписываются
		 * assets/cache/images/video очистить вручную
		**/
		$vd = new Video(null, true);

		foreach($_POST as $key=>$value):
			if(is_string($value)):
				$url = trim($value);
				/*
				* Проверяем все $_POST параметры на присутствие ссылки на видео YouTube
				*/
				preg_match($regexp, $url, $matches);
				if(count($matches)):
					/*
					* Получить файл и сохранить
					*/
					$vd->setLink($url);
				endif;
			endif;
			if(is_array($value)):
				$vds = json_encode($value);
				$re = '/\\\\/i';
				$result = preg_replace($re, "", $vds);
				$re = '/((?:https?:\/\/(?:www\.)?(?:rutube|youtube|youtu)\.(?:com|ru)\/.+))(?:")/iU';
				preg_match_all($re, $result, $matches);
				foreach($matches[1] as $k => $v):
					$vd->setLink($v);
				endforeach;
			endif;
		endforeach;
		break;
}