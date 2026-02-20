const AutoSupply = require("../models/autoparts.model");

// 1. GET /parts
const getAllParts = async (req, res) => {
  try {
    const parts = await AutoSupply.getAllParts();
    res.json(parts);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// 2. GET /parts/availability/:part_name
const getPartAvailability = async (req, res) => {
  try {
    // Uses req.params for path variables
    const part = await AutoSupply.getPartAvailability(req.params.part_name);

    if (!part) {
      return res.status(404).json({ message: "Part availability data not found" });
    }

    res.json(part);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// 3. GET /shops/:shop_id
const getShopDetails = async (req, res) => {
  try {
    const shop = await AutoSupply.getShopById(req.params.shop_id);

    if (!shop) {
      return res.status(404).json({ message: "Shop not found" });
    }

    res.json(shop);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// 4. GET /inventory/local-junkyards?part={part_name}
const getLocalInventory = async (req, res) => {
  try {
    // Uses req.query for query strings like ?part=Fuel Pump Assembly
    const partName = req.query.part; 
    const inventory = await AutoSupply.getLocalInventory(partName);
    
    res.json(inventory);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

// 5. GET /repairs/labor-estimates?zip={zip_code}
const getLaborEstimates = async (req, res) => {
  try {
    // Uses req.query for query strings like ?zip=1103
    const zipCode = req.query.zip;
    const estimates = await AutoSupply.getLaborEstimates(zipCode);
    
    res.json(estimates);
  } catch (error) {
    res.status(500).json({ message: error.message });
  }
};

module.exports = {
  getAllParts,
  getPartAvailability,
  getShopDetails,
  getLocalInventory,
  getLaborEstimates,
};