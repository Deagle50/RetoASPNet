﻿/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
/*function myFunction() {
    var x = document.getElementById("topnavid");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}*/

function cambiarTema() {
    var x = document.getElementById("cuerpo");
    var t = document.getElementById("topnavid");
    var d = document.getElementById("ddid");
    var db = document.getElementById("dropbtnid");
    var ddc = document.getElementById("dd-contentid");
    var ppl = document.getElementById("principalid");
    var f = document.getElementById("footerid");
    var c = document.getElementById("contactoid");
    var e = document.getElementsByClassName("elemento");
    var fm = document.getElementById("formularioid");

    if (x.className === "darkbody") {

        x.className = "lightbody";
        t.className = "lighttopnav topnav";
        d.className = "lightdd dd";
        db.className = "lightdropbtn dropbtn";
        ddc.className = "lightdd-content dd-content";
        ppl.className = "lightprincipal principal";
        f.className = "lightfooter footer";
        c.className = "lightcontacto contacto";
        e.className = "lightelemento elemento";
        fm.className = "lightformulario formulario";
    }
    else {

        x.className = "darkbody";
        t.className = "darktopnav topnav";
        d.className = "darkdd dd";
        db.className = "darkdropbtn dropbtn";
        ddc.className = "darkdd-content dd-content";
        ppl.className="darkprincipal principal"
        f.className = "darkfooter footer";
        c.className = "darkcontacto contacto";
        e.className = "darkelemento elemento";
        fm.className = "darkformulario formulario";
    }
}

function cambiarActive(elem) {
    alert("a");
    var a = document.getElementsByTagName('a');
    for (i = 0; i < a.length; i++)
    {
        a[i].classList.remove('active');
    }
    elem.classList.add('active');
}