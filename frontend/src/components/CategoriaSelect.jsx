export default function CategoriaSelect({ categorias, value, onChange, className}) {
    return (
        <select
            className={className}
            value={value}
            onChange={onChange}
        >
            <option value="">
                Todas las categorías
            </option>
            {
                categorias.map(cat => (
                    <option
                        key={cat.id}
                        value={cat.id}
                    >
                        {cat.nombre}
                    </option>
                ))
            }
        </select>
    );
}