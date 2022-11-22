package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.MySqlConnection;
import model.Cliente;

public class ClienteDao implements CRUD {

	private static Connection connection = MySqlConnection.createConnection();
	private static String sql;
	
	public static void create(Cliente cliente) {
		 sql = "INSERT INTO clientes VALUES (null, ?, ?, ?, ?, ?)";
		 
		 try {
			 PreparedStatement preparedStatement = connection.prepareStatement(sql);
			 
			 preparedStatement.setString(1, cliente.getNome());
			 preparedStatement.setString(2, cliente.getRg());
			 preparedStatement.setString(3, cliente.getCpf());
			 preparedStatement.setString(4, cliente.getTelefone());
			 preparedStatement.setString(5, cliente.getEmail());
			 
			 preparedStatement.executeUpdate();
			 
			 System.out.println("--Inserção correta no banco de dados");
			 
		 } catch(SQLException e) {
			 System.out.println("--Inserção incorreta no banco de dados. " + e.getMessage());
		 }
	}
	
	public static void delete(int clienteId) {
		sql = "DELETE FROM clientes WHERE id = ?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setInt(1, clienteId);
			preparedStatement.executeUpdate();
			
			System.out.println("--Cadsatro de cliente excluido corretamente");
			
		} catch (SQLException e) {
			System.out.println("--Nao foi possivel a exclusao do cadastro do cliente. " + e.getMessage());
		}
	}
	
	public static List<Cliente> find(String pesquisa){
		
		sql = String.format("SELECT * FROM clientes WHERE nome like '%s%%' OR cpf LIKE '%s%%' ", pesquisa, pesquisa);
		List<Cliente> clientes = new ArrayList<Cliente>();
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			
			while (resultSet.next()) {
				
				Cliente cliente = new Cliente();
				
				cliente.setId(resultSet.getInt("id"));
				cliente.setNome(resultSet.getString("nome"));
				cliente.setRg(resultSet.getString("rg"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setTelefone(resultSet.getString("telefone"));
				cliente.setEmail(resultSet.getString("email"));
				
				clientes.add(cliente);
				
			}
			
			System.out.println("--Cadsatro de cliente encontrado");
			return clientes;
			
		} catch(SQLException e) {
			System.out.println("--Cadastro de cliente nao encontrado. " + e.getMessage());
			return null;
		}
		
		
	}
	
	public static Cliente findByPk(int clienteId) {
		sql = String.format("SELECT * FROM clientes WHERE id = %d ", clienteId);
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);
			Cliente cliente = new Cliente();
			
			while (resultSet.next()) {
				cliente.setId(resultSet.getInt("id"));
				cliente.setNome(resultSet.getString("nome"));
				cliente.setRg(resultSet.getString("rg"));
				cliente.setCpf(resultSet.getString("cpf"));
				cliente.setTelefone(resultSet.getString("telefone"));
				cliente.setEmail(resultSet.getString("email"));
			}
			
			System.out.println("--Cadsatro de cliente encontrado corretamente atraves da chave primaria");
			return cliente;
			
	} catch(SQLException e) {
		
			System.out.println("--Nao foi possivel localizar o Cadsatro de cliente atraves da chave primaria. " + e.getMessage());
			return null;
		}
	}
	
	public static void update(Cliente cliente) {
		sql = "UPDATE clientes SET nome=?, rg=?, cpf=?, telefone=?, email=?  WHERE id=?";
		 
		 try {
			 PreparedStatement preparedStatement = connection.prepareStatement(sql);
			 
			 preparedStatement.setString(1, cliente.getNome());
			 preparedStatement.setString(2, cliente.getRg());
			 preparedStatement.setString(3, cliente.getCpf());
			 preparedStatement.setString(4, cliente.getTelefone());
			 preparedStatement.setString(5, cliente.getEmail());
			 preparedStatement.setInt(6, cliente.getId());
			 
			 preparedStatement.executeUpdate();
			 
			 System.out.println("--Atualizado de forma correta no banco de dados");
			 
		 } catch(SQLException e) {
			 System.out.println("--não foi possivel atualizar de de forma correta no banco de dados. " + e.getMessage());
		 }
	}
}
