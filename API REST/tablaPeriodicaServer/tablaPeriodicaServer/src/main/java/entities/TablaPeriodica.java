package entities;

public class TablaPeriodica {

	private int oid_tabla_periodica;
	private String nombre_tabla_periodica;
	
	public TablaPeriodica(int oid_tabla_periodica, String nombre_tabla_periodica) {
		super();
		this.oid_tabla_periodica = oid_tabla_periodica;
		this.nombre_tabla_periodica = nombre_tabla_periodica;
	}

	public int getOid_tabla_periodica() {
		return oid_tabla_periodica;
	}

	public void setOid_tabla_periodica(int oid_tabla_periodica) {
		this.oid_tabla_periodica = oid_tabla_periodica;
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
		result = prime * result + oid_tabla_periodica;
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
		TablaPeriodica other = (TablaPeriodica) obj;
		if (nombre_tabla_periodica == null) {
			if (other.nombre_tabla_periodica != null)
				return false;
		} else if (!nombre_tabla_periodica.equals(other.nombre_tabla_periodica))
			return false;
		if (oid_tabla_periodica != other.oid_tabla_periodica)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "TablaPeriodica [oid_tabla_periodica=" + oid_tabla_periodica + ", nombre_tabla_periodica="
				+ nombre_tabla_periodica + "]";
	}

	
	
	
	
	
	
}
