/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.conexaodb.ConexaoMysql;
import br.senac.sp.entidade.Produto;
import br.senac.sp.servlet.ProdutoServlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Nailson Nascimento <nailsonbr@gmail.com>
 */
public class BuscaProdutoDAO {

    public static Produto getProduto(String ProdutoBuscado) {

        Produto produto = null;

        try {
            ConexaoMysql conexao = new ConexaoMysql();
            Connection con = conexao.openConnection();
            String query = "Select * from produto where nome=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, ProdutoBuscado);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id_produto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String familia = rs.getString("id_familia");
                int quantidade = rs.getInt("quantidade");
                double preco = rs.getDouble("preco");
                String descricao = rs.getString("descricao");
                String filial = rs.getString("id_filial");
                produto = new Produto(id_produto, nome, familia, quantidade, preco, descricao, filial);
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produto;

    }

    public static Produto getPodutoID(int idProduto) {

        Produto produto = null;

        try {
            ConexaoMysql conexao = new ConexaoMysql();
            Connection con = conexao.openConnection();
            String query = "Select * from produto where id_produto=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, idProduto);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int id_produto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String familia = rs.getString("id_familia");
                int quantidade = rs.getInt("quantidade");
                double preco = rs.getDouble("preco");
                String descricao = rs.getString("descricao");
                String filial = rs.getString("id_filial");
                produto = new Produto(id_produto, nome, familia, quantidade, preco, descricao, filial);
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return produto;

    }

    public static List<Produto> getPodutoFamilia(int idFamilia) {
        
        List<Produto> ListaProdutoFamilia = new ArrayList();
        
        try {
            ConexaoMysql conexao = new ConexaoMysql();
            Connection con = conexao.openConnection();
            String query = "Select * from produto where id_familia=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, idFamilia);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_produto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String familia = rs.getString("id_familia");
                int quantidade = rs.getInt("quantidade");
                double preco = rs.getDouble("preco");
                String descricao = rs.getString("descricao");
                String filial = rs.getString("id_filial");
                
                Produto produto = new Produto(id_produto, nome, familia, quantidade, preco, descricao, filial);
                
                ListaProdutoFamilia.add(produto);
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ListaProdutoFamilia;

    }

    public static List<Produto> getPodutoFilial(int idFilial) {

        List<Produto> ListaProduto = new ArrayList();

        try {
            
            
            ConexaoMysql conexao = new ConexaoMysql();
            Connection con = conexao.openConnection();
            String query = "Select * from produto where id_filial=?";
            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, idFilial);
            ResultSet rs = ps.executeQuery();
           while (rs.next()) {
                int id_produto = rs.getInt("id_produto");
                String nome = rs.getString("nome");
                String familia = rs.getString("id_familia");
                int quantidade = rs.getInt("quantidade");
                double preco = rs.getDouble("preco");
                String descricao = rs.getString("descricao");
                String filial = rs.getString("id_filial");
                Produto produto = new Produto(id_produto, nome, familia, quantidade, preco, descricao, filial);
                
                ListaProduto.add(produto);
            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ProdutoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ListaProduto;

    }

}
