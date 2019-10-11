/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
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

    if (x.className === "darkbody") {

        x.className = "lightbody";
        t.className = "lighttopnav topnav";
        d.className = "lightdd dd";
        db.className = "lightdropbtn dropbtn";
        ddc.className = "lightdd-content dd-content";
        ppl.className = "lightprincipal principal";
    }
    else {

        x.className = "darkbody";
        t.className = "darktopnav topnav";
        d.className = "darkdd dd";
        db.className = "darkdropbtn dropbtn";
        ddc.className = "darkdd-content dd-content";
        ppl.className = "darkprincipal principal";
    }
}