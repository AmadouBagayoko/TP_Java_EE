package packageServlet;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;
public class JavaFiltre implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialisation si besoin
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        // Cast vers HttpServletRequest pour accéder au chemin
        HttpServletRequest req = (HttpServletRequest) request;

        // Affiche le chemin de la requête dans la console
        System.out.println("Requête interceptée : " + req.getRequestURI());

        // Continue la chaîne de filtres / traitement servlet
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Nettoyage si besoin
    }
}
