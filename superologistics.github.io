<!DOCTYPE html>
<html>
<head>
  <title>FastTrack Delivery</title>
  <style>
    body { font-family: Arial; text-align: center; background: #f4f4f4; }
    .box { background: white; padding: 20px; margin: 20px auto; width: 300px; border-radius: 10px; }
    button { padding: 10px; background: black; color: white; border: none; }
  </style>
</head>

<body>

<h1>🚚 FastTrack Delivery</h1>

<div class="box">
  <h3>Generate Tracking Code</h3>
  <button onclick="generateCode()">Generate Code</button>
  <p id="code"></p>
</div>

<div class="box">
  <h3>Track Package</h3>
  <input type="text" id="trackInput" placeholder="Enter tracking code">
  <button onclick="trackPackage()">Track</button>
  <p id="result"></p>
</div>

<script>
function generateCode() {
  let code = "FT" + Math.floor(Math.random()*1000000);
  document.getElementById("code").innerText = code;
}

function trackPackage() {
  let input = document.getElementById("trackInput").value;
  if(input.startsWith("FT")){
    document.getElementById("result").innerText = "Package is in transit 🚚";
  } else {
    document.getElementById("result").innerText = "Invalid tracking code ❌";
  }
}
</script>

</body>
</html>
