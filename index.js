const express = require("express");
const app = express();
const port = 3000;
const bodyParser = require("body-parser");
const db = require("./utils/connection");
const response = require("./utils/response_formatter");

// inisiasi body parser
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse application/json
app.use(bodyParser.json());

// Routing

app.get("/vehicles", (req, res) => {
  db.query("SELECT * from vehicle", (error, result) => {
    if (error) throw error;
    response(200, result, "get all data from vehicle table", res);
  });
});

app.post("/vehicles", (req, res) => {
  // jika ada request masuk
  if (req.body) {
    // Make object that contains request body
    const {
      idVehicle,
      type,
      lock_status,
      speed,
      battery,
      status,
      location,
      last_updated,
    } = req.body;
    // query to insert
    const query = `INSERT INTO vehicle VALUES(${idVehicle}, '${type}', '${lock_status}', ${speed}, ${battery} , '${status}', '${location}', now())`;
    db.query(query, (error, result) => {
      if (error) throw error;
      response(200, result, "Insert data Vehicle", res);
    });
  } else {
    // Kalau tak datang bersama request
    response(400, {}, "Bad Request!", res);
  }
});

app.put("/vehicles", (req, res) => {
  // jika ada request masuk
  if (req.body) {
    // Make object that contains request body
    const { idVehicle, type, lock_status, speed, battery, status, location } =
      req.body;
    // query to put / update
    const query = `UPDATE vehicle SET type = '${type}', lock_status = ${lock_status}, speed = '${speed}', battery_level = '${battery}', status = '${status}', location = '${location}', last_updated = now() WHERE (idvehicle = '${idVehicle}')`;
    // run query
    db.query(query, (error, result) => {
      // Throw error if error
      if (error) throw error;
      // use costum response
      response(200, result, "Update data Vehicle", res);
    });
  } else {
    // Kalau tak datang bersama request
    response(400, {}, "Bad Request!", res);
  }
});

app.delete("/vehicles", (req, res) => {
  // Jika ada id vehicle
  if (req.body.idVehicle) {
    const { idVehicle } = req.body;
    const query = `DELETE FROM vehicle WHERE idvehicle=${idVehicle}`;
    db.query(query, (error, result) => {
      if (error) throw error;
      response(200, result, `DELETE data vehicle with id${idVehicle}`, res);
    });
  } else {
    // Jika tidak ada id Vehicle
    response(400, {}, "Bad Request!", res);
  }
});
// End Of Routing

app.listen(port, () => {
  console.log(`Example app listening on http://localhost/:${port}`);
});
