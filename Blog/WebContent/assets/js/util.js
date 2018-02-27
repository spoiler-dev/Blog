(function(win){
    var utils = {
        _center : function(dom){
            dom.style.position = 'absolute';
            dom.style.top = '50%';
            dom.style.left = '50%';
            dom.style['margin-top'] = - dom.offsetHeight / 2 + 'px';
            dom.style['margin-left'] = - dom.offsetWidth / 2 + 'px';
        },

        dom : function(id){
            if(id.toString().indexOf('#') != -1) {
                id = id.replace('#','');
            }
            return document.getElementById(id);
        },
        
        /*判断dom元素是否拥有某个class类*/
		hasClass : function(obj, cls) {
		    return obj.className.match(new RegExp('(\\s|^)' + cls + '(\\s|$)'));  
		        },  
		
		/*给dom元素增加某个class类*/
		addClass : function(obj, cls) {  
		     if (!this.hasClass(obj, cls)) obj.className += " " + cls;  
		},  
		
		/*移除dom元素中的某个class类*/
		removeClass : function(obj, cls) {  
		    if (this.hasClass(obj, cls)) {  
		        var reg = new RegExp('(\\s|^)' + cls + '(\\s|$)');  
		        obj.className = obj.className.replace(reg, ' ');  
		    }  
		},  
		
		/*该方法检查每个元素中指定的类。如果不存在则添加类，如果已设置则删除之。这就是所谓的切换效果。*/
		toggleClass : function(obj,cls){  
		    if(hasClass(obj,cls)){  
		        removeClass(obj, cls);  
		    }else{  
		        addClass(obj, cls);  
		    }  
		},
    }

    win.utils = utils;
})(window);
