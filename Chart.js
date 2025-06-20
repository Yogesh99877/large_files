HTML_FILE="report.html"

cat <<EOF > $HTML_FILE
<html>
<head><script src="https://cdn.jsdelivr.net/npm/chart.js"></script></head>
<body>
<h2>Disk Usage Report</h2>
<canvas id="pieChart" width="400" height="400"></canvas>
<script>
const ctx = document.getElementById('pieChart').getContext('2d');
const data = {
  labels: [$(awk '{print "\"" $2 "\","}' $REPORT_FILE)],
  datasets: [{
    label: 'Disk Usage',
    data: [$(awk '{print $1}' $REPORT_FILE | sed 's/[A-Za-z]//g')],
    backgroundColor: ['red','blue','green','orange','purple','cyan','magenta','yellow','brown','grey']
  }]
};
new Chart(ctx, { type: 'pie', data: data });
</script>
</body>
</html>
EOF
