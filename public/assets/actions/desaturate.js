/*
 * Pixastic Lib - Desaturation filter - v0.1.1
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.desaturate={process:function(e){var t=!!e.options.average&&e.options.average!="false";if(Pixastic.Client.hasCanvasImageData()){var n=Pixastic.prepareData(e),r=e.options.rect,i=r.width,s=r.height,o=i*s,u=o*4,a,f;if(t)while(o--)n[u-=4]=n[a=u+1]=n[f=u+2]=(n[u]+n[a]+n[f])/3;else while(o--)n[u-=4]=n[a=u+1]=n[f=u+2]=n[u]*.3+n[a]*.59+n[f]*.11;return!0}if(Pixastic.Client.isIE())return e.image.style.filter+=" gray",!0},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()||Pixastic.Client.isIE()}};