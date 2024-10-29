package controller;

import dal.AcountDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Account;

@WebServlet(name = "UpdateProfileController", urlPatterns = {"/updateProfile"})
public class UpdateProfileController extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account acc = (Account) session.getAttribute("acc");

        request.setAttribute("acc", acc);
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        int uid = Integer.parseInt(request.getParameter("uid")); // Assuming uid is passed in the form as a hidden input

     AcountDBContext db = new AcountDBContext();
        Account acc = db.getAccountById(uid);

        if (acc != null) {
            acc.setUser(user);
            acc.setPass(pass);
            db.updateProfile(acc);
            
            // Update the session attribute with the new account details
            request.getSession().setAttribute("acc", acc);
            request.getSession().setAttribute("message", "Profile updated successfully!");
        } else {
            request.getSession().setAttribute("message", "Failed to update profile.");
        }

        response.sendRedirect("profile.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
