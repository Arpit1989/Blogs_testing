/*
 * Pixastic Lib - Lighten filter - v0.1.1
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.lighten={process:function(e){var t=parseFloat(e.options.amount)||0;t=Math.max(-1,Math.min(1,t));if(Pixastic.Client.hasCanvasImageData()){var n=Pixastic.prepareData(e),r=e.options.rect,i=r.width*r.height,s=i*4,o=s+1,u=s+2,a=t+1;while(i--)(n[s-=4]=n[s]*a)>255&&(n[s]=255),(n[o-=4]=n[o]*a)>255&&(n[o]=255),(n[u-=4]=n[u]*a)>255&&(n[u]=255);return!0}if(Pixastic.Client.isIE()){var f=e.image;return t<0?(f.style.filter+=" light()",f.filters[f.filters.length-1].addAmbient(255,255,255,100*-t)):t>0&&(f.style.filter+=" light()",f.filters[f.filters.length-1].addAmbient(255,255,255,100),f.filters[f.filters.length-1].addAmbient(255,255,255,100*t)),!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()||Pixastic.Client.isIE()}};