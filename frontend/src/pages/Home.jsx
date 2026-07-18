import { Link } from "react-router-dom";
import LogoJardin from "../assets/JardinLogo.webp";

import Img1 from "../assets/Jardin1.webp";
import Img2 from "../assets/Jardin2.webp";
import Img3 from "../assets/Jardin3.webp";
import Img4 from "../assets/Jardin4.webp";
import Img5 from "../assets/Jardin5.webp";

import Navbar from "../components/Navbar";
import Breadcrumbs from "../components/Breadcrumbs";
import Footer from "../components/Footer";
import { useEffect, useState } from "react";

export default function Home(){
    const imagenes = [Img1, Img2, Img3, Img4, Img5];
    const [imagenActual, setImagenActual] = useState(0);
    useEffect(() => {
    const intervalo = setInterval(() => {
        setImagenActual(prev => (prev + 1) % imagenes.length);
    }, 3000);

    return () => clearInterval(intervalo);
}, [imagenes.length]);

    return(
        <div className="home-page">
            <Navbar />
            <Breadcrumbs />
            <section className="hero">
                <div className="hero-info">
                    <img
                        src={LogoJardin}
                        className="hero-logo"
                        alt="Logo"
                    />
                    <h1>
                        ¡Desayuno o comida tú decides!
                    </h1>
                    <p>
                        Abiertos desde las 8:00 a.m. hasta las 10:45 p.m.
                        todos los días.
                    </p>
                    <Link
                        to="/menu"
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
                              className="slider-img"
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