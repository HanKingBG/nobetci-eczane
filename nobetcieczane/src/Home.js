import './css/Home.css';
import React from "react";
import { useNavigate } from "react-router-dom";
import logo from "./Logo.png";
const Home = (props) => {
  const navigate = useNavigate();
  const Login=()=>{
    navigate("/Login")
  }
  const Gunluk=()=>{
    navigate("/Gunluk")
  }
  const Tarih=()=>{
    navigate("/Tarih")
  }
  return (
    <div className="app">
      <form>
        <div className="ortala">
          <img src={logo}/>
        </div>
        <div className="label-container">
          <h2>Nöbetçi Eczane Uygulaması </h2>
        </div>
        <div className="button-container">
          <input className = "homeButon" type="submit" value="Admin Panel Giriş Yap" onClick={Login}/>
        </div>
        <div className="button-container">
          <input className = "homeButon" type="submit" value="Günlük Nöbetçi Eczane"onClick={Gunluk}/>
        </div>
        <div className="button-container">
          <input className = "homeButon" type="submit" value="Tarihe Göre Nöbetci Eczane"onClick={Tarih}/>
        </div>
        <br></br>
        <br></br>
      </form>
    </div>

  );
};

export default Home;