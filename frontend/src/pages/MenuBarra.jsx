import { useEffect, useState } from "react";
import Navbar from "../components/NavbarBarra";
import Breadcrumbs from "../components/BreadcrumbsBarra";
import CategoriaSelect from "../components/CategoriaSelect";
import Footer from "../components/FooterBarra";

export default function Menu() {
    const [foods, setFoods] = useState([]);
    const [categorias, setCategorias] = useState([]);
    const [categoriaSeleccionada, setCategoriaSeleccionada] = useState("");
    const [foodSeleccionado, setFoodSeleccionado] = useState(null);
    const nombreCategoria = categorias.find(c => c.id == categoriaSeleccionada)?.nombre || "";

    useEffect(() => {
        obtenerCategorias();
        obtenerMenu();
    }, []);

    async function obtenerCategorias() {
        try {
            const response = await fetch("http://jardinbarra32.utportfolio.cloud:5111/api/categorias/barra");
            const data = await response.json();
            setCategorias(data);
        } catch (error) {
            console.error(error);
        }
    }

    async function obtenerMenu() {
        try {
            const response = await fetch("http://jardinbarra32.utportfolio.cloud:5111/api/menu/barra");
            const data = await response.json();
            setFoods(data);
        } catch (error) {
            console.error(error);
        }
    }

    async function obtenerPorCategoria(id) {
        try {
            if (id === "") {
                obtenerMenu();
                return;
            }

            const response = await fetch(
                `http://jardinbarra32.utportfolio.cloud:5111/api/categorias/barra/${id}`
            );

            const data = await response.json();

            setFoods(data);

        } catch (error) {
            console.error(error);
        }
    }

    function cambiarCategoria(e) {
        const id = e.target.value;
        setCategoriaSeleccionada(id);
        obtenerPorCategoria(id);
    }

    return (
        <div className="barra-page">
            <Navbar />
            <div className="container">
            <Breadcrumbs categoria={nombreCategoria} />
            <div className="menu-container">
                <h1 className="titulo-menu">
                    Nuestro Menú
                </h1>
                <CategoriaSelect
                    className="categoria-select"
                    categorias={categorias}
                    value={categoriaSeleccionada}
                    onChange={cambiarCategoria}
                />
                <div className="cards">
                    {foods.map((food) => (
                        <div
                            key={food.id}
                            className="food-card"
                        >
                            <img
                                src={`/menu/${food.imagen}`}
                                alt={food.nombre}
                                className="food-img"
                            />
                            <div className="food-card-body">
                                <h3>{food.nombre}</h3>
                                <h4 className="precio">
                                    ${food.precio}
                                </h4>
                                <button
                                    className="btn-detalles"
                                    onClick={() => setFoodSeleccionado(food)}
                                >
                                    Ver detalles
                                </button>
                            </div>
                        </div>
                    ))}
                    </div>
                </div>
            </div>

            {foodSeleccionado && (
                <div
                    className="modal-overlay"
                    onClick={() => setFoodSeleccionado(null)}
                >
                    <div
                        className="modal-content"
                        onClick={(e) => e.stopPropagation()}
                    >
                        <button
                            className="cerrar-modal"
                            onClick={() => setFoodSeleccionado(null)}
                        >
                            ✖
                        </button>

                        <img
                            src={`/menu/${foodSeleccionado.imagen}`}
                            alt={foodSeleccionado.nombre}
                            className="modal-img"
                        />

                        <div className="modal-body">

                            <h2 className="modal-titulo">
                                {foodSeleccionado.nombre}
                            </h2>

                            <p className="descripcion">
                                {foodSeleccionado.descripcion}
                            </p>

                            <h3 className="precio-modal">
                                ${foodSeleccionado.precio}
                            </h3>

                            <p className="aviso">
                                AVISO: Las imagenes son orientativas y pueden no coincidir con el producto final.
                            </p>

                        </div>

                    </div>
                </div>
            )}
            <div className="footer">
                <Footer />
            </div>
        </div>
    );
}