/*
 * Pixastic Lib - Color adjust filter - v0.1.1
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.coloradjust={process:function(e){var t=parseFloat(e.options.red)||0,n=parseFloat(e.options.green)||0,r=parseFloat(e.options.blue)||0;t=Math.round(t*255),n=Math.round(n*255),r=Math.round(r*255);if(Pixastic.Client.hasCanvasImageData()){var i=Pixastic.prepareData(e),s=e.options.rect,o=s.width*s.height,u=o*4,a,f,l,c,h;while(o--)u-=4,t&&((l=i[u]+t)<0?i[u]=0:l>255?i[u]=255:i[u]=l),n&&((c=i[a=u+1]+n)<0?i[a]=0:c>255?i[a]=255:i[a]=c),r&&((h=i[f=u+2]+r)<0?i[f]=0:h>255?i[f]=255:i[f]=h);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};