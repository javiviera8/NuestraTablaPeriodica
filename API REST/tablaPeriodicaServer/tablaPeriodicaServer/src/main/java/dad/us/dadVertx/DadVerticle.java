package dad.us.dadVertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Future;


public class DadVerticle extends AbstractVerticle{

	public void start(Future<Void> startFuture) {
		vertx
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
		
	}
    
}
