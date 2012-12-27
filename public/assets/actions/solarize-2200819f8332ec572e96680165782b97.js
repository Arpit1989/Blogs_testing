/*
 * Pixastic Lib - Solarize filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.solarize={process:function(e){var t=!!e.options.average&&e.options.average!="false";if(Pixastic.Client.hasCanvasImageData()){var n=Pixastic.prepareData(e),r=e.options.rect,i=r.width,s=r.height,o=i*4,u=s;do{var a=(u-1)*o,f=i;do{var l=a+(f-1)*4,c=n[l],h=n[l+1],p=n[l+2];c>127&&(c=255-c),h>127&&(h=255-h),p>127&&(p=255-p),n[l]=c,n[l+1]=h,n[l+2]=p}while(--f)}while(--u);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};