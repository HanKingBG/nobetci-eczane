import "./css/Gunluk.css";
import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
const Home = (props) => {
  const phpSifre = "JGfSJXMGrc";
  const navigate = useNavigate();
  const [cekilenVeri, setCekilenVeri] = useState([[]]);
  const [nobetciler, setNobetciler] = useState([]);
  const ilceler = [
    "Merkez",
    "Enez",
    "Havsa",
    "İpsala",
    "Keşan",
    "Lalapaşa",
    "Meriç",
    "Süloğlu",
    "Uzunköprü",
  ];
  const ilcelerItem = [];
  useEffect(() => {
    tanimlananVeriTabani();
  }, []);
  const Anasayfa = () => {
    navigate("/");
  };
  const AraSvg = (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="16"
      height="16"
      fill="currentColor"
      class="bi bi-telephone-fill"
      viewBox="0 0 16 16"
    >
      <path
        fill-rule="evenodd"
        d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"
      />
    </svg>
  );
  const Goster = () => {
    var ilce = document.getElementById("selectIlce");
    ilce = ilce.options[ilce.selectedIndex].text;
    var zaman = document.getElementById("tarih").value;
    if (zaman != "") {
      zaman = zaman.split("-");
      var zamann = zaman[2] + "." + zaman[1] + "." + zaman[0];
      var varMi = false;
      const nobetcilerr = [];
      for (var i = 0; i < cekilenVeri.length; i++) {
        if (zamann === cekilenVeri[i][4] && ilce === cekilenVeri[i][1]) {
          nobetcilerr.push(
            <div className="eczaneler">
              <ul>
                <label className="label2">{cekilenVeri[i][2]}</label>
                <br />
                <label className="label3">
                  <b>Tel:</b>
                  {cekilenVeri[i][3]}
                </label>
                <br />
                <label className="label3">
                  <b>Adres:</b>
                  {cekilenVeri[i][5]}
                </label>
              </ul>
              <a href={"tel:" + cekilenVeri[i][3]}>
                <button>Ara {AraSvg}</button>
              </a>
            </div>
          );
          varMi = true;
        }
      }
      setNobetciler(nobetcilerr);
      if (varMi === false) {
        alert("Nobetci Eczane Yoktur");
      }
    } else {
      alert("Tarih Seçiniz!");
    }
  };

  const tanimlananVeriTabani = () => {
    axios
      .post(
        "http://localhost/eczane/GetTanimliEczaneler.php",
        new URLSearchParams({
          sifre: phpSifre,
        }),
        {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
          },
        }
      )
      .then((response) => {
        var veriler = response.data.split("<br>");
        var cekilenverii = [];
        for (var i = 0; i < veriler.length - 1; i++) {
          let x = veriler[i].split("$");
          cekilenverii.push(x);
        }
        setCekilenVeri(cekilenverii);
      })
      .catch((error) => {
        console.log(error.response);
      });
  };
  for (const [index, value] of ilceler.entries()) {
    ilcelerItem.push(<option value={value}>{value}</option>);
  }
  return (
    <div>
      <div className="app">
        <h3>Tarihli Nöbetci Eczane Paneli</h3>
        <div className="input-container">
          <input type="date" id="tarih" />
        </div>
        <select name="ilce" id="selectIlce">
          {ilcelerItem}
        </select>

        <div className="button-container">
          <input
            className="buton"
            type="submit"
            value="Goster"
            onClick={Goster}
          />
        </div>
      </div>
      <div className="app">
        {nobetciler}
        <div className="button-container">
          <input
            className="buton"
            type="submit"
            value="Anasayfa"
            onClick={Anasayfa}
          />
        </div>
      </div>
    </div>
  );
};

export default Home;
