//<?php
/**
 * AlwaysStay 
 * 
 * по умолчанию ставим галочку продолжить редактирование
 *
 * @category    plugin
 * @version     1
 * @author		bezumkin
 * @internal    @properties
 * @internal    @installset base
 * @internal    @events OnDocFormRender,OnTempFormRender,OnChunkFormRender,OnSnipFormRender,OnPluginFormRender
 */

$e = & $modx->Event;
if ($e->name == "OnDocFormRender" ||
    $e->name == "OnTempFormRender" ||
    $e->name == "OnChunkFormRender" ||
    $e->name == "OnSnipFormRender" ||
    $e->name == "OnPluginFormRender"
   ) {
      $html = "
           <script type='text/javascript'>
             if(!$('stay').value) $('stay').value=2;
           </script>
      ";
      $e->output($html);
}