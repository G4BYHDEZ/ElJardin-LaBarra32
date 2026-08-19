import { Link } from "react-router-dom";
import LogoBarra from "../assets/BarraLogo.webp";

import Img1 from "../assets/Barra1.webp";
import Img2 from "../assets/Barra2.webp";
import Img3 from "../assets/Barra3.webp";

import Navbar from "../components/NavbarBarra";
import Breadcrumbs from "../components/BreadcrumbsBarra";
import Footer from "../components/Footer";
import { useEffect, useState } from "react";

export default function Home(){
    const imagenes = [Img1, Img2, Img3];
    const [imagenActual, setImagenActual] = useState(0);
    useEffect(() => {
    const intervalo = setInterval(() => {
        setImagenActual(prev => (prev + 1) % imagenes.length);
    }, 3000);

    return () => clearInterval(intervalo);
}, [imagenes.length]);

    return(
        <div className="home-page barra-page">
            <Navbar />
            <Breadcrumbs />
            <section className="hero">
                <div className="hero-info">
                    <img
                        src={LogoBarra}
                        className="hero-logo"
                        alt="Logo"
                    />
                    <h1>
                        Boneless & Alitas
                    </h1>
                    <h2>
                        Desde 2024
                    </h2>
                    <p>
                        Abiertos desde las 12:00 p.m. hasta las 10:00 p.m.
                        todos los días.
                    </p>
                    <Link
                        to="/menubarra"
                        className="home-button"
                    >
                        ¡Dale un vistaso a nuestro Menú!
                    </Link>
                </div>
                <div className="slider">
                  <div
                      className="slider-track"
                      style={{
                          transform: `translateX(-${imagenActual * 100}%)`
                      }}
                  >
                      {imagenes.map((img, i) => (
                          <img
                              key={i}
                              src={img}
                              className="slider-img-barra"
                          />
                      ))}
                  </div>
              </div>
            </section>
            <div className="footer-home">
                <Footer/>
            </div>

        </div>

    );

}