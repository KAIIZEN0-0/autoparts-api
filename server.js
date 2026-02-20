require("dotenv").config(); 
const app = require("./app"); // 'app' is only declared once here!

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`AutoParts API is live and running on http://localhost:${PORT}`);
});