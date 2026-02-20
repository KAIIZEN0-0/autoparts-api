const express = require("express");
const router = express.Router();
const autoPartsController = require("../controllers/autoparts.controllers");

// 1. GET /parts
router.get("/parts", autoPartsController.getAllParts);

// 2. GET /parts/availability/:part_name
router.get("/parts/availability/:part_name", autoPartsController.getPartAvailability);

// 3. GET /shops/:shop_id
router.get("/shops/:shop_id", autoPartsController.getShopDetails);

// 4. GET /inventory/local-junkyards
router.get("/inventory/local-junkyards", autoPartsController.getLocalInventory);

// 5. GET /repairs/labor-estimates
router.get("/repairs/labor-estimates", autoPartsController.getLaborEstimates);

module.exports = router;