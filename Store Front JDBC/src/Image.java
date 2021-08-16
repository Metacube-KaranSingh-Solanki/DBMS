/** POJO Class of the Image */
public class Image {
	private int id;
	private String url;

	/**
	 * @param id
	 * @param url
	 */
	public Image(int id, String url) {
		super();
		this.id = id;
		this.url = url;
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", url=" + url + "]";
	}

	/**
	 * @return the id
	 */
	int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the URL
	 */
	String getUrl() {
		return url;
	}

	/**
	 * @param url the URL to set
	 */
	void setUrl(String url) {
		this.url = url;
	}

}
