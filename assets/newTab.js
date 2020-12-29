var mylinks = document.getElementsByTagName("a");

var i;
for (i=0;i<mylinks.length-1;i++) {
    var mylink = mylinks[i];
    if (!(mylink.href.includes("//localhost:4000/") || mylink.href.includes("//wutiaoren.info/"))) {
        mylink.target="_blank";
    }
    console.log(mylink)
}