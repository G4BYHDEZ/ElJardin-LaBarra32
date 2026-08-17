import { BrowserRouter, Routes, Route } from "react-router-dom";
import Home from "./pages/Home";
import HomeBarra from "./pages/HomeBarra";
import Menu from "./pages/Menu";
import MenuBarra from "./pages/MenuBarra";
import Contacto from "./pages/Contacto";
import ContactoBarra from "./pages/ContactoBarra";


export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/barra" element={<HomeBarra />}/>
        <Route path="/menu" element={<Menu />} />
        <Route path="/menubarra" element={<MenuBarra />} />
        <Route path="/contacto" element={<Contacto />}/>
        <Route path="/contactobarra" element={<ContactoBarra />}/>
      </Routes>
    </BrowserRouter>
  );
}