/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Product;


/**
 *
 * @author Admin
 */
public class AcountDBContext extends DBContext {

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Account where isAdmin != 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account account = new Account();
                account.setUid(rs.getInt(1));
                account.setUser(rs.getString(2));
                account.setPass(rs.getString(3));
                account.setIsSell(rs.getInt(4));
                account.setIsAdmin(rs.getInt(5));
                account.setActive(rs.getBoolean(6));

                list.add(account);
            }
        } catch (Exception ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Account login(String user, String pass) {
        try {
            String sql = "SELECT * FROM Account where [user] = ? and pass = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUid(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                a.setIsSell(rs.getInt(4));
                a.setIsAdmin(rs.getInt(5));
                a.setActive(rs.getBoolean(6));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Account checkAccountExistByUserPass(String user,String pass) {
        try {
            String sql = "SELECT * FROM Account where [user] = ? and [pass] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUid(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                a.setIsSell(rs.getInt(4));
                a.setIsAdmin(rs.getInt(5));
                a.setActive(rs.getBoolean(6));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Account checkAccountExist(String user) {
        try {
            String sql = "SELECT * FROM Account where [user] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUid(rs.getInt(1));
                a.setUser(rs.getString(2));
                a.setPass(rs.getString(3));
                a.setIsSell(rs.getInt(4));
                a.setIsAdmin(rs.getInt(5));
                a.setActive(rs.getBoolean(6));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(String user, String pass) {
        try {
            String sql = "INSERT INTO [Account]\n"
                    + "           ([user]\n"
                    + "           ,[pass]\n"
                    + "           ,[isSell]\n"
                    + "           ,[isAdmin]\n"
                    + "           ,[active])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,0\n"
                    + "           ,0\n"
                    + "           ,1)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Account getAccountById(int accountId) {
        try {
            String sql = "select *  from Account where uID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, accountId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Account account = new Account();
                account.setUid(rs.getInt(1));
                account.setUser(rs.getString(2));
                account.setPass(rs.getString(3));
                account.setIsSell(rs.getInt(4));
                account.setIsAdmin(rs.getInt(5));
                account.setActive(rs.getBoolean(6));

                return account;
            }
        } catch (Exception ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateAccount(Account account) {

        try {
            String sql = "UPDATE [Account]\n"
                    + "   SET [active] = ?\n"
                    + " WHERE uID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setBoolean(1, account.isActive());
            stm.setInt(2, account.getUid());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
 public void updateProfile(Account account) {
    try {
        String sql = "UPDATE [Account]\n"
                   + "   SET [user] = ?, [pass] = ?\n"
                   + " WHERE [uId] = ?";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setString(1, account.getUser());
        stm.setString(2, account.getPass());
        stm.setInt(3, account.getUid());
        stm.executeUpdate();
    } catch (SQLException ex) {
        Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
    }
}


  public static void main(String[] args) {
    try {
        // Lấy thông tin tài khoản cần cập nhật
        int accountId = 4; // ID của tài khoản cần cập nhật
        AcountDBContext db = new AcountDBContext();
        Account account = db.getAccountById(accountId);

        // Cập nhật thông tin tài khoản
        account.setUser("newUsername");
        account.setPass("newPassword");
        db.updateProfile(account);

        System.out.println("Cập nhật thông tin tài khoản thành công!");
    } catch (Exception e) {
        System.out.println("Lỗi khi cập nhật thông tin tài khoản: " + e.getMessage());
    }
}


    public void UpDatePassWord(String pass,String user) {
        try {
            String sql = "UPDATE [Account]\n"
                    + "   SET [pass] = ?\n"
                    + " WHERE [user] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, pass);
            stm.setString(2, user);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AcountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

