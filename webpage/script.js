// Script to get current date and  time and display it on all the HTML pages

function startTime() {
  // get values
  var today = new Date();
 
  var y = today.getFullYear();
  var mt= today.getMonth();
  var d = today.getDate();
  var h = today.getHours();
  var m = today.getMinutes();
  var s = today.getSeconds();
  var w = today.getDay();
  
  // add zero in front of numbers < 10
  mt= checkTime(mt);
  d = checkTime(d);
  h = checkTime(h);
  m = checkTime(m);
  s = checkTime(s);
  // convert 0-6 to weekdays
  w = checkDay(w);
  
  // Display Values
  document.getElementById('weekDay').innerHTML = w;
  document.getElementById('date').innerHTML = d + ":" + mt + ":" + y;
  document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
  var t = setTimeout(startTime, 500);
}

function checkTime(i) {
  if (i < 10) 
  { 
    i = "0" + i 
  }
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
