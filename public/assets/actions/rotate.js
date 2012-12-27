/*
 * Pixastic Lib - Rotate - v0.1.0
 * Copyright (c) 2009 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.rotate={process:function(e){if(Pixastic.Client.hasCanvas()){var t=e.canvas,n=e.width,r=e.height,i=document.createElement("canvas");i.width=n,i.height=r,i.getContext("2d").drawImage(t,0,0,n,r);var s=-parseFloat(e.options.angle)*Math.PI/180,o=s;o>Math.PI*.5&&(o=Math.PI-o),o<-Math.PI*.5&&(o=-Math.PI-o);var u=Math.sqrt(n*n+r*r),a=Math.abs(o)-Math.abs(Math.atan2(r,n)),f=Math.abs(o)+Math.abs(Math.atan2(r,n)),l=Math.abs(Math.cos(a)*u),c=Math.abs(Math.sin(f)*u);t.width=l,t.height=c;var h=t.getContext("2d");return h.translate(l/2,c/2),h.rotate(s),h.drawImage(i,-n/2,-r/2),e.useData=!1,!0}},checkSupport:function(){return Pixastic.Client.hasCanvas()}};