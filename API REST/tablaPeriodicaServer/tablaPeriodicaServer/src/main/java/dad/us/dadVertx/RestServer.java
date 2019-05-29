package dad.us.dadVertx;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.github.mauricio.async.db.mysql.decoder.PreparedStatementPrepareResponseDecoder;
import com.google.gson.Gson;

import entities.Elemento;
import entities.Operacion;
import entities.TablaPeriodica;
import entities.Usuario;
import io.vertx.core.AbstractVerticle;
import io.vertx.core.Future;
import io.vertx.core.http.impl.pool.Pool;
import io.vertx.core.json.JsonObject;
import io.vertx.ext.asyncsql.AsyncSQLClient;
import io.vertx.ext.asyncsql.MySQLClient;
import io.vertx.ext.web.Router;
import io.vertx.ext.web.RoutingContext;
import io.vertx.ext.web.handler.BodyHandler;

public class RestServer extends AbstractVerticle {

	private AsyncSQLClient mySQLClient;
	
	public void start(Future<Void> startFuture) {
		
		JsonObject config = new JsonObject()
				.put("host", "localhost")
				.put("username", "root")
				.put("password", "root")
				.put("database", "tablaperiodicadb")
				.put("port", 3306);
		mySQLClient = MySQLClient.createShared(vertx, config);
		

		
		Router router = Router.router(vertx);
		vertx.createHttpServer().requestHandler(router)
			.listen(8090, result ->{
				if(result.succeeded()) {
					System.out.println("Servidor desplegado");
				}else {
					System.out.println("Error de despliegue");
				}
			});
		
		
		router.route().handler(BodyHandler.create());
		
		//GET
		router.get("/tablaperiodica").handler(this::handlerGetTablaPeriodica);
		router.get("/tablaperiodica/:nombre_tabla_periodica").handler(this::handlerGetTablaPeriodicaNombre);
		router.get("/usuario").handler(this::handlerGetTodosUsuarios);
		router.get("/usuario/:nombre_usuario").handler(this::handlerGetUsuarioNombre);
		router.get("/elemento").handler(this::handlerGetTodosElementos);
		router.get("/elemento/:nombre_elemento").handler(this::handlerGetElementoNombre);
		router.get("/operacion").handler(this::handlerGetTodasOperaciones);
		router.get("/operacion/:nombre_usuario").handler(this::handlerGetOperacionesNombreUsuario);
		
		//PUT
		router.put("/tablaperiodica").handler(this::handlerInsertTablaPeriodica);
		router.put("/usuario").handler(this::handlerInsertUsuario);
		router.put("/elemento").handler(this::handlerInsertElemento);
		router.put("/operacion").handler(this::handlerInsertOperacion);
		
		//POST
		router.post("/tablaperiodica").handler(this::handlerInsertTablaPeriodica);
		router.post("/usuario").handler(this::handlerInsertUsuario);
		router.post("/elemento").handler(this::handlerInsertElemento);
		router.post("/operacion").handler(this::handlerInsertOperacion);
	
	}
	
	//METODOS GET PARA REALIZAR LOS GET SOBRE CADA UNA DE LAS TABLAS DE LA BASE DE DATOS.
	
	//METODO GET PARA OBTENER TODAS TABLAS PERIODICAS.
	private void handlerGetTablaPeriodica(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("SELECT * FROM tablaperiodica" , result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						List<TablaPeriodica> tablasPeriodicas = new ArrayList<>();
						for(JsonObject json : result.result().getRows()) {
							tablasPeriodicas.add(gson.fromJson(json.encode(), TablaPeriodica.class));	
						}
						routingContext.response().end(gson.toJson(tablasPeriodicas));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e) {
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER LAS TABLAS PERIODICAS CORRESPODIENTES CON EL NOMBRE DE TABLA PERIODICA PROPORCIONADO.
	private void handlerGetTablaPeriodicaNombre(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				String paramStr = routingContext.pathParam("nombre_tabla_periodica");
				connection.result().query("SELECT * FROM tablaperiodica WHERE nombre_tabla_periodica = '" + paramStr + "'", result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						TablaPeriodica tablaPeriodica= null;
						for(JsonObject json : result.result().getRows()) {
							tablaPeriodica = gson.fromJson(json.encodePrettily(), TablaPeriodica.class);	
						}
						
						routingContext.response().end(gson.toJson(tablaPeriodica));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER TODOS LOS USUARIOS.
	private void handlerGetTodosUsuarios(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("SELECT * FROM usuario" , result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						List<Usuario> usuarios = new ArrayList<>();
						for(JsonObject json : result.result().getRows()) {
							usuarios.add(gson.fromJson(json.encode(), Usuario.class));	
						}
						
						routingContext.response().end(gson.toJson(usuarios));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER LOS USUARIOS CORRESPODIENTES CON EL NOMBRE DE USUARIO PROPORCIONADO.
	private void handlerGetUsuarioNombre(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				String paramStr = routingContext.pathParam("nombre_usuario");
				connection.result().query("SELECT * FROM usuario WHERE nombre_usuario = '" + paramStr + "'", result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						Usuario usuario = null;
						for(JsonObject json : result.result().getRows()) {
							usuario=gson.fromJson(json.encodePrettily(), Usuario.class);	
						}
						
						routingContext.response().end(gson.toJson(usuario));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER TODOS LOS ELEMENTOS.
	private void handlerGetTodosElementos(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
	
				connection.result().query("SELECT * FROM elemento" , result -> {
					if (result.succeeded()) {	
						try {
							Gson gson = new Gson();
							List<Elemento> elementos = new ArrayList<>();
							for(JsonObject json : result.result().getRows()) {
								elementos.add(gson.fromJson(json.encode(), Elemento.class));
								
							}
							routingContext.response().end(gson.toJson(elementos));
							
							/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
							routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
					
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER LOS ELEMENTOS CORRESPONDIENTES CON EL NOMBRE DE ELEMENTO PROPORCIONADO.
	private void handlerGetElementoNombre(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				String paramStr = routingContext.pathParam("nombre_elemento");
				connection.result().query("SELECT * FROM elemento WHERE nombre_elemento = '" + paramStr + "'" , result -> {
					if (result.succeeded()) {
						
						try {
							Gson gson = new Gson();
							Elemento elemento = null;
							for(JsonObject json : result.result().getRows()) {
								elemento = gson.fromJson(json.encodePrettily(), Elemento.class);
								
							}
							routingContext.response().end(gson.toJson(elemento));
							
							/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
							routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
					
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER TODAS LAS OPERACIONES.
	private void handlerGetTodasOperaciones(RoutingContext routingConext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("SELECT * FROM operacion" , result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						List<Operacion> operaciones = new ArrayList<>();
						for(JsonObject json : result.result().getRows()) {
							operaciones.add(gson.fromJson(json.encode(), Operacion.class));	
						}
						routingConext.response().end(gson.toJson(operaciones));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingConext.response().setStatusCode(400).end();	
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingConext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingConext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO GET PARA OBTENER LAS OPERACIONES CORRESPODIENTES CON EL NOMBRE DE USUARIO PROPORCIONADO.
	private void handlerGetOperacionesNombreUsuario(RoutingContext routingContext) {
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				String paramStr = routingContext.pathParam("nombre_usuario");
				connection.result().query("SELECT * FROM operacion WHERE nombre_usuario = '" + paramStr + "'", result -> {
					if (result.succeeded()) {
						
						try {
						Gson gson = new Gson();
						List<Operacion> operaciones = new ArrayList<>();
						for(JsonObject json : result.result().getRows()) {
							operaciones.add(gson.fromJson(json.encode(), Operacion.class));	
						}
						
						routingContext.response().end(gson.toJson(operaciones));
						
						/*String jsonResult = new JsonArray(result.result().getRows()).encodePrettily();
						routingConext.response().end(jsonResult);*/
						}catch(Exception e){
							System.out.println(e.getCause().getMessage());
							routingContext.response().setStatusCode(400).end();
						}
						
						connection.result().close();
						
					}else {
						System.out.println(result.cause().getMessage());
						routingContext.response().setStatusCode(400).end();
					}
				});
			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODOS INSERT PARA REALIZAR LOS PUT/POST SOBRE CADA UNA DE LAS TABLAS DE LA BASE DE DATOS.
	
	//METODO INSERT PARA LA TABLA "TABLA_PERIODICA".
	private void handlerInsertTablaPeriodica(RoutingContext routingContext) {
		JsonObject body = routingContext.getBodyAsJson();
		routingContext.response().putHeader("content-type", "application/json").end(body.encode());
		
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("INSERT INTO tablaperiodica(nombre_tabla_periodica) VALUES ('" + body.getString("nombre_tabla_periodica") + "')", result -> {
					if(result.succeeded()) {
						System.out.println("INSERT realizado con éxito en la base de datos.");
					}else {
						System.out.println("INSERT no se pudo realizar con éxtio");
					}
					
					connection.result().close();
				});


			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO INSERT PARA LA TABLA "USUARIO".
	private void handlerInsertUsuario(RoutingContext routingContext) {
		JsonObject body = routingContext.getBodyAsJson();
		routingContext.response().putHeader("content-type", "application/json").end(body.encode());
		
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("INSERT INTO usuario(nombre_usuario,nombre_tabla_periodica) VALUES ('" + body.getString("nombre_usuario") + "','" + body.getString("nombre_tabla_periodica") + "')", result -> {
					if(result.succeeded()) {
						System.out.println("INSERT realizado con éxito en la base de datos.");
					}else {
						System.out.println("INSERT no se pudo realizar con éxtio");
					}
					
					connection.result().close();
				});


			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO INSERT PARA LA TABLA "ELEMENTO".
	private void handlerInsertElemento(RoutingContext routingContext) {
		JsonObject body = routingContext.getBodyAsJson();
		routingContext.response().putHeader("content-type", "application/json").end(body.encode());
		
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("INSERT INTO elemento(nombre_elemento,simbolo_elemento,numero_atomico,url_video,nombre_tabla_periodica) VALUES ('" + body.getString("nombre_elemento")
				+ "','" + body.getString("simbolo_elemento") + "'," + body.getInteger("numero_atomico") + ",'" + body.getString("url_video") + "','" + body.getString("nombre_tabla_periodica") + "')", result -> {
					if(result.succeeded()) {
						System.out.println("INSERT realizado con éxito en la base de datos.");
					}else {
						System.out.println("INSERT no se pudo realizar con éxtio");
					}
					
					connection.result().close();
				});


			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
	//METODO INSERT PARA LA TABLA "OPERACION".
	private void handlerInsertOperacion(RoutingContext routingContext) {
		JsonObject body = routingContext.getBodyAsJson();
		routingContext.response().putHeader("content-type", "application/json").end(body.encode());
		
		mySQLClient.getConnection(connection -> {
			if (connection.succeeded()) {
				connection.result().query("INSERT INTO operacion(nombre_tabla_periodica,nombre_elemento,nombre_usuario) VALUES ('" + body.getString("nombre_tabla_periodica") 
				+ "','" +  body.getString("nombre_elemento") + "','" + body.getString("nombre_usuario") + "')", result -> {
					if(result.succeeded()) {
						System.out.println("INSERT realizado con éxito en la base de datos.");
					}else {
						System.out.println("INSERT no se pudo realizar con éxtio");
					}
					
					connection.result().close();
				});


			}else {
				System.out.println(connection.cause().getMessage());
				routingContext.response().setStatusCode(400).end();
			}
		});
	}
	
}
