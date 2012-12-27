/*
 * Pixastic Lib - Emboss filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.emboss={process:function(e){var t=parseFloat(e.options.strength)||1,n=typeof e.options.greyLevel!="undefined"?parseInt(e.options.greyLevel):180,r=e.options.direction||"topleft",i=!!e.options.blend&&e.options.blend!="false",s=0,o=0;switch(r){case"topleft":s=-1,o=-1;break;case"top":s=-1,o=0;break;case"topright":s=-1,o=1;break;case"right":s=0,o=1;break;case"bottomright":s=1,o=1;break;case"bottom":s=1,o=0;break;case"bottomleft":s=1,o=-1;break;case"left":s=0,o=-1}if(Pixastic.Client.hasCanvasImageData()){var u=Pixastic.prepareData(e),a=Pixastic.prepareData(e,!0),f=!!e.options.invertAlpha,l=e.options.rect,c=l.width,h=l.height,p=c*4,d=h;do{var v=(d-1)*p,m=s;d+m<1&&(m=0),d+m>h&&(m=0);var g=(d-1+m)*c*4,y=c;do{var b=v+(y-1)*4,w=o;y+w<1&&(w=0),y+w>c&&(w=0);var E=g+(y-1+w)*4,S=a[b]-a[E],x=a[b+1]-a[E+1],T=a[b+2]-a[E+2],N=S,C=N>0?N:-N,k=x>0?x:-x,L=T>0?T:-T;k>C&&(N=x),L>C&&(N=T),N*=t;if(i){var A=u[b]+N,O=u[b+1]+N,M=u[b+2]+N;u[b]=A>255?255:A<0?0:A,u[b+1]=O>255?255:O<0?0:O,u[b+2]=M>255?255:M<0?0:M}else{var _=n-N;_<0?_=0:_>255&&(_=255),u[b]=u[b+1]=u[b+2]=_}}while(--y)}while(--d);return!0}if(Pixastic.Client.isIE())return e.image.style.filter+=" progid:DXImageTransform.Microsoft.emboss()",!0},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()||Pixastic.Client.isIE()}};