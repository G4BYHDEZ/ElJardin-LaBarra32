import Navbar from "../components/Navbar";
import Breadcrumbs from "../components/Breadcrumbs";
import Footer from "../components/Footer";

export default function Contacto() {
    return (
        <div>
            <Navbar />
            <div className="container">
            <Breadcrumbs />

            <div className="container">

                <div className="contacto-container">

                    <h1 className="contacto-titulo">
                        Contáctanos
                    </h1>

                    <p className="contacto-subtitulo">
                        Estamos para atenderte. Puedes visitarnos o comunicarte con nosotros mediante cualquiera de los siguientes medios.
                    </p>

                    <div className="contacto-item">
                        <h3>📞 Teléfono</h3>
                        <p>653 103 6776</p>
                    </div>

                    <div className="contacto-item">
                        <h3>📍 Dirección</h3>
                        <p>
                            Av. Carranza y Calle 32,
                            San Luis Río Colorado, Sonora, México, 83440.
                        </p>
                    </div>

                    <div className="contacto-item">
                        <h3>📘 Facebook</h3>

                        <a
                            href="https://www.facebook.com/profile.php?id=61569836262509"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="contacto-link"
                        >
                            El Jardín De La 32
                        </a>
                    </div>

                    <div className="contacto-item">
                        <h3>💬 Messenger</h3>

                        <p>
                            El Jardín De La 32
                        </p>
                    </div>

                </div>

            </div>
            <div className="footer">
                <Footer />
            </div>
            </div>
        </div>
    );
}