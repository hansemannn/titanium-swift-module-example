var Test = require('ti.test');

var win = Ti.UI.createWindow({
    backgroundColor: '#fff'
 });
 
 var btn = Ti.UI.createButton({
   title: 'Trigger'
 });
 
 btn.addEventListener('click', function() {
    Test.post('https://httpbin.org/headers', event => {
      alert(event.responseText);
    });
 });
 
 win.add(btn);
 win.open();