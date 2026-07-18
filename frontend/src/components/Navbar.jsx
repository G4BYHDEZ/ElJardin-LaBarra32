import { Link } from "react-router-dom";
import LogoJardin from "../assets/JardinLogo.webp";

export default function Navbar() {
  return (
    <nav className="navbar">
      <Link to="/">
        <img className="navbar-logo" src={LogoJardin} alt="El Jardin" />
      </Link>
      <div className="navbar-links">
          <>
            <Link
              to="/menu"
              className="navbar-btn"
            >
              Menú
            </Link>
            <Link
              to="/contacto"
              className="navbar-btn"
            >
              Contacto
            </Link>
          </>
      </div>
    </nav>
  );
}