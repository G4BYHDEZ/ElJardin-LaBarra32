import { Link, useLocation } from "react-router-dom";

export default function Breadcrumbs({ categoria }) {
  const location = useLocation();
  if (location.pathname === "/") {
    return null;
  }
  const pathnames = location.pathname
    .split("/")
    .filter((x) => x);

  const names = {
    menu: "Menú",
    contacto: "Contacto"
  };
  return (
    <div className="breadcrumbs">
      <div className="breadcrumbs-container">
        <span className="breadcrumbs-active">
          El Jardín
        </span>
        {pathnames.map((value, index) => {
          const to = `/${pathnames
            .slice(0, index + 1)
            .join("/")}`;
          const isLast = index === pathnames.length - 1;
          return (
            <div
              key={to}
              className="breadcrumbs-item"
            >
              <span className="breadcrumbs-separator">
                &gt;
              </span>
              {isLast ? (
                <span className="breadcrumbs-active">
                  {names[value] || value}
                </span>
              ) : (
                <Link
                  to={to}
                  className="breadcrumbs-link"
                >
                  {names[value] || value}
                </Link>
              )}
            </div>
          );
        })}
        {categoria && (
          <div className="breadcrumbs-item">
            <span className="breadcrumbs-separator">
              &gt;
            </span>
            <span className="breadcrumbs-active">
              {categoria}
            </span>
          </div>
        )}
      </div>
    </div>
  );
}