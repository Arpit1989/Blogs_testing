/*
 * Pixastic Lib - Flip - v0.1.0
 * Copyright (c) 2008 Jacob Seidelin, jseidelin@nihilogic.dk, http://blog.nihilogic.dk/
 * License: [http://www.pixastic.com/lib/license.txt]
 */
Pixastic.Actions.flip={process:function(e){var t=e.options.rect,n=document.createElement("canvas");n.width=t.width,n.height=t.height,n.getContext("2d").drawImage(e.image,t.left,t.top,t.width,t.height,0,0,t.width,t.height);var r=e.canvas.getContext("2d");return r.clearRect(t.left,t.top,t.width,t.height),e.options.axis=="horizontal"?(r.scale(-1,1),r.drawImage(n,-t.left-t.width,t.top,t.width,t.height)):(r.scale(1,-1),r.drawImage(n,t.left,-t.top-t.height,t.width,t.height)),e.useData=!1,!0},checkSupport:function(){return Pixastic.Client.hasCanvas()}};