package cn.com.zangai.beans;

public class MartixBean {
	private Integer martixId; //主键id
	private String martixTitle; //分类标题
	private String cover; //音乐封面	
	private Integer musicId; //音乐id
	private String music; //音乐路径
	private String song; //音乐名
	private String singer; //歌手
	private String album; //专辑
	
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public Integer getMartixId() {
		return martixId;
	}
	public void setMartixId(Integer martixId) {
		this.martixId = martixId;
	}
	public String getMartixTitle() {
		return martixTitle;
	}
	public void setMartixTitle(String martixTitle) {
		this.martixTitle = martixTitle;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public Integer getMusicId() {
		return musicId;
	}
	public void setMusicId(Integer musicId) {
		this.musicId = musicId;
	}
	public String getMusic() {
		return music;
	}
	public void setMusic(String music) {
		this.music = music;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}


}
