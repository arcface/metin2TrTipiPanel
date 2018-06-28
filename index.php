<?php require_once "setting/helper/secure.php"; ?>
<?php
    define("ARCGVN", true);
    require_once "setting/ayar.php";
    require_once "setting/fonksiyon.php";
    $helper->Load();
    $helper->LoadClass();

    $helperDir = PATH . '/setting/helper/function/';
    if ($dh = opendir($helperDir)){
        while($file = readdir($dh)){
            if (is_file($helperDir . '/' . $file)){
                if($file != '.htaccess'){
                $dosyaadi = explode('.',$file);
                $yeniclassadi = $dosyaadi[0].'_cls';
                $$yeniclassadi = new $dosyaadi[0];
                }
            }
        }
    }
    $helperDir = PATH .'/tema/'.TEMA.'/class/';
    if ($dh = opendir($helperDir)){
        while($file = readdir($dh)){
            if (is_file($helperDir . '/' . $file)){
                if($file != '.htaccess'){
                $dosyaadi = explode('.',$file);
                $yeniclassadi = $dosyaadi[0].'_cls';
                $$yeniclassadi = new $dosyaadi[0];
                }
            }
        }
    }
    function dilleri_listele(){
        global $temaclass_cls;
        $helperDir = PATH .'/setting/helper/lang/';
        if ($dh = opendir($helperDir)){
            while($file = readdir($dh)){
                if (is_file($helperDir . '/' . $file)){
                    if($file != '.htaccess'){
                    $dosyaadi = explode('.',$file);
                    echo $temaclass_cls->dillist($dosyaadi[0]);
                    }
                }
            }
        }
    }

	if (is_dir(SITE_TEMA)){
	    if(is_file( SITE_TEMA.'index.php')){
	    	require SITE_TEMA.'index.php'; // tema dosyasını çağırdık
            echo '<div id="demo-modal"></div>';
            echo '<div id="sonuc"></div>';
	    }else{
	        require_once PATH.'/setting/helper/page/902.html'; // tema dosyasında index.php yok ise
	    }
	}else{
		require_once PATH.'/setting/helper/page/901.html'; // tema dosyası yok ise
	}