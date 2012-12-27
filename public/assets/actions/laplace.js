/*
 * Pixastic Lib - Laplace filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.laplace={process:function(e){var t=1,n=!!e.options.invert&&e.options.invert!="false",r=parseFloat(e.options.edgeStrength)||0,i=parseInt(e.options.greyLevel)||0;r=-r;if(Pixastic.Client.hasCanvasImageData()){var s=Pixastic.prepareData(e),o=Pixastic.prepareData(e,!0),u=[[-1,-1,-1],[-1,8,-1],[-1,-1,-1]],a=1/8,f=e.options.rect,l=f.width,c=f.height,h=l*4,p=c;do{var d=(p-1)*h,v=p==c?p-1:p,m=p==1?0:p-2,g=m*l*4,y=v*l*4,b=l;do{var w=d+(b*4-4),E=g+(b==1?0:b-2)*4,S=y+(b==l?b-1:b)*4,x=(-o[E-4]-o[E]-o[E+4]-o[w-4]-o[w+4]-o[S-4]-o[S]-o[S+4]+o[w]*8)*a,T=(-o[E-3]-o[E+1]-o[E+5]-o[w-3]-o[w+5]-o[S-3]-o[S+1]-o[S+5]+o[w+1]*8)*a,N=(-o[E-2]-o[E+2]-o[E+6]-o[w-2]-o[w+6]-o[S-2]-o[S+2]-o[S+6]+o[w+2]*8)*a,C=(x+T+N)/3+i;r!=0&&(C>127?C+=(C+1-128)*r:C<127&&(C-=(C+1)*r)),n&&(C=255-C),C<0&&(C=0),C>255&&(C=255),s[w]=s[w+1]=s[w+2]=C}while(--b)}while(--p);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};