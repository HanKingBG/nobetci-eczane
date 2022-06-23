import "./css/Login.css";
import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import axios from "axios";
const Login = (props) => {
  const phpSifre = "JGfSJXMGrc";
  const navigate = useNavigate();
  const [usernamePassword, setUsernamePassword] = useState([" ", " "]);
  const [cekilenVeri, setCekilenVeri] = useState([[]]);
  const [tarih, setTarih] = useState();
  const [sayi, setSayi] = useState(0);
  const [tabloItem, setTabloItem] = useState([]);
  const [silinecekItem, setSilinecekItem] = useState([]);
  const [giris, setGiris] = useState(false);
  const [eczaneler, setEczaneler] = useState([[]]);
  const [seciliİlce, setSeciliİlce] = useState("Merkez");
  const [seciliId, setSeciliId] = useState("Merkez");
  const [seciliİlceIndex, setSeciliİlceIndex] = useState(0);
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
  const eczanelerItem = [];

  //Seciliilce değişince çalışıyor.
  useEffect(() => {
    setSeciliİlceIndex(ilceler.indexOf(seciliİlce));
    tanimlananVeriTabani(); //tanımlanan verileri veritabanından çekiyor.
  }, [seciliİlce]);

  // secili id değişince
  useEffect(() => {
    tanimlananVeriTabani();
  }, [seciliId]);

  //sayi değişince 
  useEffect(() => {
    tanimlananVeriTabani();
  }, [sayi]); // veri silince sayi random ile atanıyor sonra ekran güncelleniyor.

  //Başlangıçta çalışıyor.
  useEffect(() => {
    veriTabani();
    const date = new Date();
    setTarih(
      date.getFullYear() +
        "-" +
        BasamakKontrol(date.getMonth() + 1) +
        "-" +
        BasamakKontrol(date.getDate())
    );
  }, []);

  const BasamakKontrol = (deger) => {
    if (deger < 10) {
      return "0" + deger;
    }
    return deger;
  };

  const Kontrol = () => {
    const inputUsername = document.getElementById("username").value;
    const inputPassword = document.getElementById("password").value;
    if (
      inputUsername == usernamePassword[0] &&
      inputPassword == usernamePassword[1]
    ) {
      console.log("Giriş Başarılı");
      setGiris(true);
    } else {
      console.log("Giriş Başarısız");

      alert("Hatalı kullanıcı adı veya şifre!");
    }
  };
  const CikisYap = () => {
    navigate("/");
  };
  const Tanimla = () => {
    var eczane = document.getElementById("selectEczane");
    if (eczane.selectedIndex != -1) {
      var zaman = document.getElementById("tarih").value;
      if (zaman != "") {
        zaman = zaman.split("-");
        var zamann = zaman[2] + "." + zaman[1] + "." + zaman[0];
        eczane = eczane.options[eczane.selectedIndex].text;
        for (var i = 0; i < cekilenVeri.length; i++) {
          if (zamann === cekilenVeri[i][4] && eczane === cekilenVeri[i][2]) {
            alert("Eczane tanımlıdır.");
            return;
          }
        }
        var ilce = document.getElementById("selectIlce");
        ilce = ilce.options[ilce.selectedIndex].text;
        const veri = {
          sifre: phpSifre,
          tarih: zaman,
          ilce: ilce,
          eczaneAdi: eczane,
        };
        axios
          .post(
            "http://localhost/eczane/EczaneTanimla.php",
            new URLSearchParams(veri),
            {
              headers: {
                "Content-Type": "application/x-www-form-urlencoded",
              },
            }
          )
          .then((response) => {
            //console.log(response.data);
          })
          .catch((error) => {
            console.log(error.response);
          });
        alert("Eczane Tanımlanmıştır.");
        tanimlananVeriTabani();
      } else {
        alert("Tarih Seçiniz!");
      }
    } else {
      alert("Eczane Seçiniz!");
    }
  };
  
  const veriTabani = () => {
    // admin şifre çekiyor
    // eczanelerin ilçeye göre listesini çekiyor.
    axios
      .post(
        "http://localhost/eczane/GetAdmin.php",
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
        //console.log(response);
        console.log(response.data);
        const veriler = response.data;
        setUsernamePassword([veriler.split(":")[0], veriler.split(":")[1]]);
      })
      .catch((error) => {
        console.log(error.response);
      });
    axios
      .post(
        "http://localhost/eczane/GetEczaneler.php",
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
        const eczane = response.data.split("<br>");
        //console.log(eczane)
        const Merkez = [];
        const Enez = [];
        const Havsa = [];
        const Ipsala = [];
        const Kesan = [];
        const Lalapasa = [];
        const Meric = [];
        const Suloglu = [];
        const Uzunkopru = [];
        for (var i = 0; i < eczane.length - 1; i++) {
          const eczaneIlce = eczane[i].split("$")[0];
          const eczaneAdi = eczane[i].split("$")[1];
          if (eczaneIlce === "Merkez") {
            Merkez.push(eczaneAdi);
          } else if (eczaneIlce === "Enez") {
            Enez.push(eczaneAdi);
          } else if (eczaneIlce === "Havsa") {
            Havsa.push(eczaneAdi);
          } else if (eczaneIlce === "İpsala") {
            Ipsala.push(eczaneAdi);
          } else if (eczaneIlce === "Keşan") {
            Kesan.push(eczaneAdi);
          } else if (eczaneIlce === "Lalapaşa") {
            Lalapasa.push(eczaneAdi);
          } else if (eczaneIlce === "Meriç") {
            Meric.push(eczaneAdi);
          } else if (eczaneIlce === "Süloğlu") {
            Suloglu.push(eczaneAdi);
          } else if (eczaneIlce === "Uzunköprü") {
            Uzunkopru.push(eczaneAdi);
          }
        }
        setEczaneler([
          Merkez,
          Enez,
          Havsa,
          Ipsala,
          Kesan,
          Lalapasa,
          Meric,
          Suloglu,
          Uzunkopru,
        ]);
      })
      .catch((error) => {
        console.log(error.response);
      });
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
        var tabloİtem = [];
        var silİtem = [];
        var cekilenverii = [];
        for (var i = 0; i < veriler.length - 1; i++) {
          let x = veriler[i].split("$");
          cekilenverii.push(x);
          tabloİtem.push(
            <tr>
              <td>{x[0]}</td>
              <td>{x[1]}</td>
              <td>{x[2]}</td>
              <td>{x[3]}</td>
              <td>{x[4]}</td>
              <td>{x[5]}</td>
            </tr>
          );
          silİtem.push(<option value={x[0]}>{x[0]}</option>);
        }
        setCekilenVeri(cekilenverii);
        setTabloItem(tabloİtem);
        setSilinecekItem(silİtem);
      })
      .catch((error) => {
        console.log(error.response);
      });
    /*console.log(tabloItem);
        console.log(silinecekItem);*/
  };
  const Anasayfa = () => {
    navigate("/");
  };
  const Sil = () => {
    var silinecek = document.getElementById("silinecek");
    if (silinecek.selectedIndex != -1) {
      axios
        .post(
          "http://localhost/eczane/Sil.php",
          new URLSearchParams({
            sifre: phpSifre,
            id: silinecek.options[silinecek.selectedIndex].text,
          }),
          {
            headers: {
              "Content-Type": "application/x-www-form-urlencoded",
            },
          }
        )
        .then((response) => {
          console.log("silinecek");
          console.log(response.data);
        })
        .catch((error) => {
          console.log(error.response);
        });
    } else {
      alert("Silinecek id seçiniz!");
    }
    TabloYenile();
  };
  const TabloYenile = () => {
    console.log("tablo yenile");
    var rand = Math.random() * 100;
    console.log(rand);
    while (rand == sayi) {
      rand = Math.random() * 100;
      console.log("sonsuz");
    }
    setSayi(rand);
  };

  for (const [index, value] of ilceler.entries()) {
    ilcelerItem.push(<option value={value}>{value}</option>);
  }
  for (var i = 0; i < eczaneler[seciliİlceIndex].length; i++) {
    eczanelerItem.push(
      <option value={eczaneler[seciliİlceIndex][i]}>
        {eczaneler[seciliİlceIndex][i]}
      </option>
    );
  }

  const login = (
    <div>
      <div className="app">
        <div className="label-container">
          <label>Admin Panel Giriş </label>
        </div>
        <div className="input-container">
          <input id="username" />
        </div>
        <div className="input-container">
          <input id="password" type="password" />
        </div>
        <div className="button-container">
          <input
            className="buton"
            type="submit"
            value="Giriş Yap"
            onClick={Kontrol}
          />
        </div>
      </div>
      <div className="app">
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

  const AdminPanel = (
    <div>
      <div className="app">
        <div className="label-container">
          <label>ECZANE TANIMLA</label>
        </div>
        <div className="label-container2">
          <label>Tarih Seçiniz</label>
        </div>
        <div className="input-container">
          <input type="date" id="tarih" min={tarih} />
        </div>
        <select
          name="ilce"
          id="selectIlce"
          onChange={(e) => {
            setSeciliİlce(e.target.value);
          }}
        >
          {ilcelerItem}
        </select>
        <select name="eczane" id="selectEczane">
          {eczanelerItem}
        </select>
        <div className="button-container">
          <input
            className="buton"
            type="submit"
            value="Tanımla"
            onClick={Tanimla}
          />
        </div>
      </div>
      <div className="app">
        <div className="label-container">
          <label>Tanımlı Eczaneler</label>
        </div>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>İlce</th>
            <th>Eczane Adı</th>
            <th>Telefon</th>
            <th>Tarih</th>
            <th>Adres</th>
          </tr>
          {tabloItem}
        </table>
        <select
          name="silinecek"
          id="silinecek"
          onChange={(e) => setSeciliId(e.target.value)}
        >
          {silinecekItem}
        </select>
        <div className="button-container">
          <input className="buton" type="submit" value="Sil" onClick={Sil} />
        </div>
      </div>
      <div className="app">
        <div className="button-container">
          <input
            className="buton"
            type="submit"
            value="Çıkış Yap"
            onClick={CikisYap}
          />
        </div>
      </div>
    </div>
  );

  return <div>{giris ? AdminPanel : login}</div>;
};

export default Login;
