function chkProcessor(which)
{
  var chkEdit_en = document.getElementByName("chkEdit_" + which);
  var btnModify = document.getElementByName("btnModify_" + which);
  var txaWords = document.getElementByName("txaWords_" + which);
  alert (chkEdit_en.checked);
  if(chkEdit_en.checked==true)
  {
    btnModify.disabled=false;
    txaWords.readOnly=false;
  } 
  else
  {
    btnModify.disabled=true;
    txaWords.readOnly=true;
  } 
}