import "./css/App.css";
import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from "./Login";
import Home from "./Home";
import Gunluk from "./Gunluk";
import Tarih from "./Tarih";
const App = () => {
  return (
    <div style={styles.app}>
      <Router>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/Login" element={<Login />} />
          <Route path="/Gunluk" element={<Gunluk />} />
          <Route path="/Tarih" element={<Tarih />} />
        </Routes>
      </Router>
    </div>
  );
};
export default App;
const styles = {
  app: {
    padding: 50,
  },
};
