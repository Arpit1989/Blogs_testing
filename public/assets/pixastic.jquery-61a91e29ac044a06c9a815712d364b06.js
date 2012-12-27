/*
 * Pixastic Lib - jQuery plugin
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
typeof jQuery!="undefined"&&jQuery&&jQuery.fn&&(jQuery.fn.pixastic=function(e,t){var n=[];return this.each(function(){if(this.tagName.toLowerCase()=="img"&&!this.complete)return;var r=Pixastic.process(this,e,t);r&&n.push(r)}),n.length>0?jQuery(n):this});