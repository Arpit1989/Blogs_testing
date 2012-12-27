/*
 * Pixastic Lib - Resize - v0.1.0
 * Copyright (c) 2009 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.resize={process:function(e){if(Pixastic.Client.hasCanvas()){var t=parseInt(e.options.width,10),n=parseInt(e.options.height,10),r=e.canvas;t<1&&(t=1),t<2&&(t=2);var i=document.createElement("canvas");return i.width=t,i.height=n,i.getContext("2d").drawImage(r,0,0,t,n),r.width=t,r.height=n,r.getContext("2d").drawImage(i,0,0),e.useData=!1,!0}},checkSupport:function(){return Pixastic.Client.hasCanvas()}};