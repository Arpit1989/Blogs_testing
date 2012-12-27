/*
 * Pixastic Lib - Mosaic filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.mosaic={process:function(e){var t=Math.max(1,parseInt(e.options.blockSize,10));if(Pixastic.Client.hasCanvasImageData()){var n=e.options.rect,r=n.width,i=n.height,s=r*4,o=i,u=e.canvas.getContext("2d"),a=document.createElement("canvas");a.width=a.height=1;var f=a.getContext("2d"),l=document.createElement("canvas");l.width=r,l.height=i;var c=l.getContext("2d");c.drawImage(e.canvas,n.left,n.top,r,i,0,0,r,i);for(var o=0;o<i;o+=t)for(var h=0;h<r;h+=t){var p=t,d=t;p+h>r&&(p=r-h),d+o>i&&(d=i-o),f.drawImage(l,h,o,p,d,0,0,1,1);var v=f.getImageData(0,0,1,1).data;u.fillStyle="rgb("+v[0]+","+v[1]+","+v[2]+")",u.fillRect(n.left+h,n.top+o,t,t)}return e.useData=!1,!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};