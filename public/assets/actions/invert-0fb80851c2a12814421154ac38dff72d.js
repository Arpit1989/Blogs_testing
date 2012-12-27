/*
 * Pixastic Lib - Invert filter - v0.1.1
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.invert={process:function(e){if(Pixastic.Client.hasCanvasImageData()){var t=Pixastic.prepareData(e),n=!!e.options.invertAlpha,r=e.options.rect,i=r.width*r.height,s=i*4,o=s+1,u=s+2,a=s+3;while(i--)t[s-=4]=255-t[s],t[o-=4]=255-t[o],t[u-=4]=255-t[u],n&&(t[a-=4]=255-t[a]);return!0}if(Pixastic.Client.isIE())return e.image.style.filter+=" invert",!0},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()||Pixastic.Client.isIE()}};