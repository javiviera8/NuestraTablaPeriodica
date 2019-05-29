package entities;

public class Operacion {
	
	private int oid_operacion;
	private String nombre_tabla_periodica;
	private String nombre_elemento;
	private String nombre_usuario;
	
	public Operacion(int oid_operacion, String nombre_tabla_periodica, String nombre_elemento, String nombre_usuario) {
		super();
		this.oid_operacion = oid_operacion;
		this.nombre_tabla_periodica = nombre_tabla_periodica;
		this.nombre_elemento = nombre_elemento;
		this.nombre_usuario = nombre_usuario;
	}

	public int getOid_operacion() {
		return oid_operacion;
	}

	public void setOid_operacion(int oid_operacion) {
		this.oid_operacion = oid_operacion;
	}

	public String getNombre_tabla_periodica() {
		return nombre_tabla_periodica;
	}

	public void setNombre_tabla_periodica(String nombre_tabla_periodica) {
		this.nombre_tabla_periodica = nombre_tabla_periodica;
	}

	public String getNombre_elemento() {
		return nombre_elemento;
	}

	public void setNombre_elemento(String nombre_elemento) {
		this.nombre_elemento = nombre_elemento;
	}

	public String getNombre_usuario() {
		return nombre_usuario;
	}

	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nombre_elemento == null) ? 0 : nombre_elemento.hashCode());
		result = prime * result + ((nombre_tabla_periodica == null) ? 0 : nombre_tabla_periodica.hashCode());
		result = prime * result + ((nombre_usuario == null) ? 0 : nombre_usuario.hashCode());
		result = prime * result + oid_operacion;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Operacion other = (Operacion) obj;
		if (nombre_elemento == null) {
			if (other.nombre_elemento != null)
				return false;
		} else if (!nombre_elemento.equals(other.nombre_elemento))
			return false;
		if (nombre_tabla_periodica == null) {
			if (other.nombre_tabla_periodica != null)
				return false;
		} else if (!nombre_tabla_periodica.equals(other.nombre_tabla_periodica))
			return false;
		if (nombre_usuario == null) {
			if (other.nombre_usuario != null)
				return false;
		} else if (!nombre_usuario.equals(other.nombre_usuario))
			return false;
		if (oid_operacion != other.oid_operacion)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Operacion [oid_operacion=" + oid_operacion + ", nombre_tabla_periodica=" + nombre_tabla_periodica
				+ ", nombre_elemento=" + nombre_elemento + ", nombre_usuario=" + nombre_usuario + "]";
	}
	
	
	
	

	

}
