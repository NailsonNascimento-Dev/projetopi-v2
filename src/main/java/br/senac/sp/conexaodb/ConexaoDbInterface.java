/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.conexaodb;

import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Marcos Vinicius Santos Souza
 */
public interface ConexaoDbInterface {

    public Connection openConnection() throws ClassNotFoundException, SQLException;

    public boolean closeConnection() throws ClassNotFoundException, SQLException;
}
