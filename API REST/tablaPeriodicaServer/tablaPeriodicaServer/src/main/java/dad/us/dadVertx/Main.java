package dad.us.dadVertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Future;

public class Main extends AbstractVerticle{

	public void start(Future<Void> startFuture) {
		// vertx.deployVerticle(new CommReceiver());
				// vertx.deployVerticle(new JsonExamples());
				//vertx.deployVerticle(new HttpServer());
				// vertx.deployVerticle(new TcpExample());
				// vertx.deployVerticle(new CommSender());
				// vertx.deployVerticle(new CommReceiverBroadcast());
				// vertx.deployVerticle(new CommReceiverBroadcast2());
				vertx.deployVerticle(new RestServer());
				vertx.deployVerticle(new MqttExample());
				//vertx.deployVerticle(new TCPServer());

				//for (int i = 0; i < 10000; i++) {
					//vertx.deployVerticle(new TCPClient());
		
		/*vertx
		.createHttpServer()
		.requestHandler(r -> {
			r.response().end("<b>Hola cliente!</b><br/>Ejemplo");
		}).listen(8081, result -> {
			if(result.succeeded()) {
				System.out.println("Todo ha ido bien!");
				startFuture.complete();
			}else {
				System.out.println("Vaya, ha ocurrido un problema." + result.cause().getMessage());
				startFuture.fail(result.cause());
			}
		});
		*/
	//}	
	
}
	}

