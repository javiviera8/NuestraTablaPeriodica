package entities;

public class Usuario {
	
	private int oid_usuario;
	private String nombre_usuario;
	private String nombre_tabla_periodica;
	
	public Usuario(int oid_usuario, String nombre_usuario, String nombre_tabla_periodica) {
		super();
		this.oid_usuario = oid_usuario;
		this.nombre_usuario = nombre_usuario;
		this.nombre_tabla_periodica = nombre_tabla_periodica;
	}

	public int getOid_usuario() {
		return oid_usuario;
	}

	public void setOid_usuario(int oid_usuario) {
		this.oid_usuario = oid_usuario;
	}

	public String getNombre_usuario() {
		return nombre_usuario;
	}

	public void setNombre_usuario(String nombre_usuario) {
		this.nombre_usuario = nombre_usuario;
	}

	public String getNombre_tabla_periodica() {
		return nombre_tabla_periodica;
	}

	public void setNombre_tabla_periodica(String nombre_tabla_periodica) {
		this.nombre_tabla_periodica = nombre_tabla_periodica;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((nombre_tabla_periodica == null) ? 0 : nombre_tabla_periodica.hashCode());
		result = prime * result + ((nombre_usuario == null) ? 0 : nombre_usuario.hashCode());
		result = prime * result + oid_usuario;
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
		Usuario other = (Usuario) obj;
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
		if (oid_usuario != other.oid_usuario)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Usuario [oid_usuario=" + oid_usuario + ", nombre_usuario=" + nombre_usuario
				+ ", nombre_tabla_periodica=" + nombre_tabla_periodica + "]";
	}
	
	
	
	
	

}
