/*
 * Pixastic Lib - Brightness/Contrast filter - v0.1.1
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.brightness={process:function(e){var t=parseInt(e.options.brightness,10)||0,n=parseFloat(e.options.contrast)||0,r=!!e.options.legacy&&e.options.legacy!="false";if(r)t=Math.min(150,Math.max(-150,t));else var i=1+Math.min(150,Math.max(-150,t))/150;n=Math.max(0,n+1);if(Pixastic.Client.hasCanvasImageData()){var s=Pixastic.prepareData(e),o=e.options.rect,u=o.width,a=o.height,f=u*a,l=f*4,c,h,p,d;n!=1?r?(p=n,d=(t-128)*n+128):(p=i*n,d=-n*128+128):r?(p=1,d=t):(p=i,d=0);var v,m,g;while(f--)(v=s[l-=4]*p+d)>255?s[l]=255:v<0?s[l]=0:s[l]=v,(m=s[c=l+1]*p+d)>255?s[c]=255:m<0?s[c]=0:s[c]=m,(g=s[h=l+2]*p+d)>255?s[h]=255:g<0?s[h]=0:s[h]=g;return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};