const app = require("./app");
const app = express();
const autoSupplyRoutes = require("./routes/autoparts.routes");

app.use(express.json());

app.use("/api", autoPartsRoutes);
const PORT = process.env.PORT || 3306;

app.listen(PORT, () => {
  console.log(`AutoPartsAPI is live and running on port ${PORT}`);
});