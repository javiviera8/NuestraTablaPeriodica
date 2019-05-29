package entities;

public class Elemento {
	
	private int oid_elemento;
	private String nombre_elemento;
	private String simbolo_elemento;
	private int numero_atomico;
	private String url_video;
	private String nombre_tabla_periodica;
	
	public Elemento(int oid_elemento, String nombre_elemento, String simbolo_elemento, int numero_atomico,
			String url_video, String nombre_tabla_periodica) {
		super();
		this.oid_elemento = oid_elemento;
		this.nombre_elemento = nombre_elemento;
		this.simbolo_elemento = simbolo_elemento;
		this.numero_atomico = numero_atomico;
		this.url_video = url_video;
		this.nombre_tabla_periodica = nombre_tabla_periodica;
	}

	public int getOid_elemento() {
		return oid_elemento;
	}

	public void setOid_elemento(int oid_elemento) {
		this.oid_elemento = oid_elemento;
	}

	public String getNombre_elemento() {
		return nombre_elemento;
	}

	public void setNombre_elemento(String nombre_elemento) {
		this.nombre_elemento = nombre_elemento;
	}

	public String getSimbolo_elemento() {
		return simbolo_elemento;
	}

	public void setSimbolo_elemento(String simbolo_elemento) {
		this.simbolo_elemento = simbolo_elemento;
	}

	public int getNumero_atomico() {
		return numero_atomico;
	}

	public void setNumero_atomico(int numero_atomico) {
		this.numero_atomico = numero_atomico;
	}

	public String getUrl_video() {
		return url_video;
	}

	public void setUrl_video(String url_video) {
		this.url_video = url_video;
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
		result = prime * result + ((nombre_elemento == null) ? 0 : nombre_elemento.hashCode());
		result = prime * result + ((nombre_tabla_periodica == null) ? 0 : nombre_tabla_periodica.hashCode());
		result = prime * result + numero_atomico;
		result = prime * result + oid_elemento;
		result = prime * result + ((simbolo_elemento == null) ? 0 : simbolo_elemento.hashCode());
		result = prime * result + ((url_video == null) ? 0 : url_video.hashCode());
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
		Elemento other = (Elemento) obj;
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
		if (numero_atomico != other.numero_atomico)
			return false;
		if (oid_elemento != other.oid_elemento)
			return false;
		if (simbolo_elemento == null) {
			if (other.simbolo_elemento != null)
				return false;
		} else if (!simbolo_elemento.equals(other.simbolo_elemento))
			return false;
		if (url_video == null) {
			if (other.url_video != null)
				return false;
		} else if (!url_video.equals(other.url_video))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Elemento [oid_elemento=" + oid_elemento + ", nombre_elemento=" + nombre_elemento + ", simbolo_elemento="
				+ simbolo_elemento + ", numero_atomico=" + numero_atomico + ", url_video=" + url_video
				+ ", nombre_tabla_periodica=" + nombre_tabla_periodica + "]";
	}
	
	
	
}
