import Navbar from "../components/NavbarBarra";
import Breadcrumbs from "../components/BreadcrumbsBarra";
import Footer from "../components/Footer";

export default function Contacto() {
    return (
        <div className="barra-page">
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
                        <p>653 530 7135</p>
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
                            href="https://www.facebook.com/BONELESSYWINGSBARRA32"
                            target="_blank"
                            rel="noopener noreferrer"
                            className="contacto-link"
                        >
                            La Barra De La 32
                        </a>
                    </div>

                    <div className="contacto-item">
                        <h3>💬 Messenger</h3>

                        <p>
                            BARRA 32
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