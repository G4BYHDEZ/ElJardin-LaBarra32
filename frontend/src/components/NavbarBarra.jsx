import { Link } from "react-router-dom";
import LogoBarra from "../assets/BarraLogo.webp";

export default function Navbar() {
  return (
    <nav className="navbar">
      <Link to="/barra">
        <img className="navbar-logo" src={LogoBarra} alt="La Barra" />
      </Link>
      <div className="navbar-links">
          <>
            <Link
              to="/"
              className="navbar-btn"
            >
              Ir a El Jardin
            </Link>
            <Link
              to="/menubarra"
              className="navbar-btn"
            >
              Menú
            </Link>
            <Link
              to="/contactobarra"
              className="navbar-btn"
            >
              Contacto
            </Link>
          </>
      </div>
    </nav>
  );
}