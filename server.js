const express = require('express');
const path = require('path');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3000;

// Enable CORS
app.use(cors());

// Serve static files from web directory
app.use(express.static(path.join(__dirname, 'web')));

// Handle Flutter web routing
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'web', 'index.html'));
});

app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
  console.log('Note: This is a temporary server for a Flutter web app.');
  console.log('To properly develop this Flutter project, you need Flutter SDK installed.');
});
