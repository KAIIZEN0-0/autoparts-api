const db = require("../config/db");

// 1. GET /parts
const getAllParts = async () => {
  const [rows] = await db.query("SELECT * FROM parts");
  return rows;
};

// 2. GET /parts/availability/{part_name}
const getPartAvailability = async (partName) => {
  const [rows] = await db.query(
    "SELECT part_name, compatibility, scarcity_index, global_stock_status, estimated_wait_days FROM parts WHERE part_name = ?",
    [partName]
  );
  return rows[0]; // Returns a single object
};

// 3. GET /shops/{shop_id}
const getShopById = async (id) => {
  const [rows] = await db.query(
    "SELECT * FROM shops WHERE shop_id = ?",
    [id]
  );
  return rows[0];
};

// 4. GET /inventory/local-junkyards?part={part_name}
const getLocalInventory = async (partName) => {
  // Uses an INNER JOIN to fetch the specific data structure required by your proposal [cite: 115-125]
  const query = `
    SELECT 
      s.shop_name, 
      s.location, 
      i.distance_km, 
      i.stock_status, 
      i.part_condition 
    FROM inventory i
    JOIN shops s ON i.shop_id = s.shop_id
    JOIN parts p ON i.part_id = p.part_id
    WHERE p.part_name = ?
  `;
  const [rows] = await db.query(query, [partName]);
  return rows; // Returns an array of available shops
};

// 5. GET /repairs/labor-estimates?zip={zip_code}
const getLaborEstimates = async (zipCode) => {
  const [rows] = await db.query(
    "SELECT zip_code, area, repair_type, estimated_labor_hours, difficulty_level, availability_of_mechanics FROM labor_estimates WHERE zip_code = ?",
    [zipCode]
  );
  return rows[0];
};

module.exports = {
  getAllParts,
  getPartAvailability,
  getShopById,
  getLocalInventory,
  getLaborEstimates,
};