/*
 * Pixastic Lib - Blur filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.blur={process:function(e){typeof e.options.fixMargin=="undefined"&&(e.options.fixMargin=!0);if(Pixastic.Client.hasCanvasImageData()){var t=Pixastic.prepareData(e),n=Pixastic.prepareData(e,!0),r=[[0,1,0],[1,2,1],[0,1,0]],i=0;for(var s=0;s<3;s++)for(var o=0;o<3;o++)i+=r[s][o];i=1/(i*2);var u=e.options.rect,a=u.width,f=u.height,l=a*4,c=f;do{var h=(c-1)*l,p=c==1?0:c-2,d=c==f?c-1:c,v=p*a*4,m=d*a*4,g=a;do{var y=h+(g*4-4),b=v+(g==1?0:g-2)*4,w=m+(g==a?g-1:g)*4;t[y]=((n[b]+n[y-4]+n[y+4]+n[w])*2+n[y]*4)*i,t[y+1]=((n[b+1]+n[y-3]+n[y+5]+n[w+1])*2+n[y+1]*4)*i,t[y+2]=((n[b+2]+n[y-2]+n[y+6]+n[w+2])*2+n[y+2]*4)*i}while(--g)}while(--c);return!0}if(Pixastic.Client.isIE())return e.image.style.filter+=" progid:DXImageTransform.Microsoft.Blur(pixelradius=1.5)",e.options.fixMargin&&(e.image.style.marginLeft=(parseInt(e.image.style.marginLeft,10)||0)-2+"px",e.image.style.marginTop=(parseInt(e.image.style.marginTop,10)||0)-2+"px"),!0},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()||Pixastic.Client.isIE()}};