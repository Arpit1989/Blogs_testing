/*
 * Pixastic Lib - Posterize effect - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.posterize={process:function(e){var t=256;typeof e.options.levels!="undefined"&&(t=parseInt(e.options.levels,10)||1);if(Pixastic.Client.hasCanvasImageData()){var n=Pixastic.prepareData(e);t=Math.max(2,Math.min(256,t));var r=256/t,i=256/(t-1),s=e.options.rect,o=s.width,u=s.height,a=o*4,f=u;do{var l=(f-1)*a,c=o;do{var h=l+(c-1)*4,p=i*(n[h]/r>>0),d=i*(n[h+1]/r>>0),v=i*(n[h+2]/r>>0);p>255&&(p=255),d>255&&(d=255),v>255&&(v=255),n[h]=p,n[h+1]=d,n[h+2]=v}while(--c)}while(--f);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};