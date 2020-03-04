function startTime() {
  var today = new Date();
  var y = today.getFullYear();
  var mt = today.getMonth();
  var d = today.getDate();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  var w = today.getDay();
  
  mt = checkTime(mt);
  d = checkTime(d);
  h = checkTime(h);
  m = checkTime(m);
  s = checkTime(s);
  w = checkDay(w);
  
  document.getElementById('weekDay').innerHTML = w;
  document.getElementById('date').innerHTML = d + ":" + mt + ":" + y;
  document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
}

function checkTime(i) {
  if (i < 10) 
  { 
    i = "0" + i 
  } // add zero in front of numbers < 10
  return i;
} 
function checkDay(i) 
{
  switch (i) {
    case 0:
      return "Sunday";
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "Friday";
    case 6:
      return "Saturday";
  }
}