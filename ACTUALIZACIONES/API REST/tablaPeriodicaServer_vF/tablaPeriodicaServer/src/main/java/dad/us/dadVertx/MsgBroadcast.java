package dad.us.dadVertx;

import io.vertx.core.AbstractVerticle;
import io.vertx.core.Future;

public class MsgBroadcast extends AbstractVerticle {

	public void start(Future<Void> startFuture) {
		vertx.deployVerticle(new MsgClient());
		vertx.eventBus().consumer("Mensaje broadcast", message -> {
			System.out.println(message.body().toString());
			System.out.println("Yo estoy aqui" + this.getClass().getName());
		});
	}
	
}
