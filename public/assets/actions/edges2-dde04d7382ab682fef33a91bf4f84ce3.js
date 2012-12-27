/*
 * Pixastic Lib - Edge detection 2 - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 * 
 * Contribution by Oliver Hunt (http://nerget.com/, http://nerget.com/canvas/edgeDetection.js). Thanks Oliver!
 *
 */
Pixastic.Actions.edges2={process:function(e){if(Pixastic.Client.hasCanvasImageData()){var t=Pixastic.prepareData(e),n=Pixastic.prepareData(e,!0),r=e.options.rect,i=r.width,s=r.height,o=i*4,u=o+4,a=s-1,f=i-1;for(var l=1;l<a;++l){var c=u-4,h=c-o,p=c+o,d=-n[h]-n[c]-n[p],v=-n[++h]-n[++c]-n[++p],m=-n[++h]-n[++c]-n[++p],g=n[h+=2],y=n[++h],b=n[++h],w=n[c+=2],E=n[++c],S=n[++c],x=n[p+=2],T=n[++p],N=n[++p],C=-g-w-x,k=-y-E-T,L=-b-S-N;for(var A=1;A<f;++A){c=u+4,h=c-o,p=c+o;var O=127+d-g-w*-8-x,M=127+v-y-E*-8-T,_=127+m-b-S*-8-N;d=C,v=k,m=L,g=n[h],y=n[++h],b=n[++h],w=n[c],E=n[++c],S=n[++c],x=n[p],T=n[++p],N=n[++p],O+=C=-g-w-x,M+=k=-y-E-T,_+=L=-b-S-N,O>255&&(O=255),M>255&&(M=255),_>255&&(_=255),O<0&&(O=0),M<0&&(M=0),_<0&&(_=0),t[u]=O,t[++u]=M,t[++u]=_,u+=2}u+=8}return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};