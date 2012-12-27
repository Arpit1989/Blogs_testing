/*
 * Pixastic Lib - Pointillize filter - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.pointillize={process:function(e){var t=Math.max(1,parseInt(e.options.radius,10)),n=Math.min(5,Math.max(0,parseFloat(e.options.density)||0)),r=Math.max(0,parseFloat(e.options.noise)||0),i=!!e.options.transparent&&e.options.transparent!="false";if(Pixastic.Client.hasCanvasImageData()){var s=e.options.rect,o=s.width,u=s.height,a=o*4,f=u,l=e.canvas.getContext("2d"),c=e.canvas.width,h=e.canvas.height,p=document.createElement("canvas");p.width=p.height=1;var d=p.getContext("2d"),v=document.createElement("canvas");v.width=o,v.height=u;var m=v.getContext("2d");m.drawImage(e.canvas,s.left,s.top,o,u,0,0,o,u);var g=t*2;i&&l.clearRect(s.left,s.top,s.width,s.height);var y=t*r,b=1/n;for(var f=0;f<u+t;f+=g*b)for(var w=0;w<o+t;w+=g*b){rndX=r?w+(Math.random()*2-1)*y>>0:w,rndY=r?f+(Math.random()*2-1)*y>>0:f;var E=rndX-t,S=rndY-t;E<0&&(E=0),S<0&&(S=0);var x=rndX+s.left,T=rndY+s.top;x<0&&(x=0),x>c&&(x=c),T<0&&(T=0),T>h&&(T=h);var N=g,C=g;N+E>o&&(N=o-E),C+S>u&&(C=u-S),N<1&&(N=1),C<1&&(C=1),d.drawImage(v,E,S,N,C,0,0,1,1);var k=d.getImageData(0,0,1,1).data;l.fillStyle="rgb("+k[0]+","+k[1]+","+k[2]+")",l.beginPath(),l.arc(x,T,t,0,Math.PI*2,!0),l.closePath(),l.fill()}return e.useData=!1,!0}},checkSupport:function(){return Pixastic.Client.hasCanvasImageData()}};