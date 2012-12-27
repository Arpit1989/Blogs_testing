/*
 * Pixastic Lib - Sepia filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.sepia={process:function(e){var t=parseInt(e.options.mode,10)||0;t<0&&(t=0),t>1&&(t=1);if(Pixastic.Client.hasCanvasImageData()){var n=Pixastic.prepareData(e),r=e.options.rect,i=r.width,s=r.height,o=i*4,u=s;do{var a=(u-1)*o,f=i;do{var l=a+(f-1)*4;if(t)var c=n[l]*.299+n[l+1]*.587+n[l+2]*.114,h=c+39,p=c+14,d=c-36;else var v=n[l],m=n[l+1],g=n[l+2],h=v*.393+m*.769+g*.189,p=v*.349+m*.686+g*.168,d=v*.272+m*.534+g*.131;h<0&&(h=0),h>255&&(h=255),p<0&&(p=0),p>255&&(p=255),d<0&&(d=0),d>255&&(d=255),n[l]=h,n[l+1]=p,n[l+2]=d}while(--f)}while(--u);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};