(function(win){
   var pin = function(cellvalue){	  
       var htmlTmp;
	   if(cellvalue == '1'){
		   htmlTmp= '<span class="label label-warning arrowed arrowed-right">已发</span>';
	   }else if(cellvalue == '0'){
		   htmlTmp= '<span class="label label-success arrowed-in arrowed-in-right">初始化</span>';
	   }
		return htmlTmp;	
   }
   win.pin = pin;
})(window);

pin();		