/*
 * Pixastic Lib - Remove noise - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.removenoise={process:function(e){if(Pixastic.Client.hasCanvasImageData()){var t=Pixastic.prepareData(e),n=e.options.rect,r=n.width,i=n.height,s=r*4,o=i;do{var u=(o-1)*s,a=o==i?o-1:o,f=o==1?0:o-2,l=f*r*4,c=a*r*4,h=r;do{var p=u+(h*4-4),d=l+(h==1?0:h-2)*4,v=c+(h==r?h-1:h)*4,m,g,y,b,w,E;m=g=t[d];var S=t[p-4],x=t[p+4],T=t[v];S<m&&(m=S),x<m&&(m=x),T<m&&(m=T),S>g&&(g=S),x>g&&(g=x),T>g&&(g=T),y=b=t[d+1];var N=t[p-3],C=t[p+5],k=t[v+1];N<y&&(y=N),C<y&&(y=C),k<y&&(y=k),N>b&&(b=N),C>b&&(b=C),k>b&&(b=k),w=E=t[d+2];var L=t[p-2],A=t[p+6],O=t[v+2];L<w&&(w=L),A<w&&(w=A),O<w&&(w=O),L>E&&(E=L),A>E&&(E=A),O>E&&(E=O),t[p]>g?t[p]=g:t[p]<m&&(t[p]=m),t[p+1]>b?t[p+1]=b:t[p+1]<y&&(t[p+1]=y),t[p+2]>E?t[p+2]=E:t[p+2]<w&&(t[p+2]=w)}while(--h)}while(--o);return!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};