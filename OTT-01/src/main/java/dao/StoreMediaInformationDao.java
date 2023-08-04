package dao;
import dto.MediaInfo;
import util.DBConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class StoreMediaInformationDao {

	private static PreparedStatement ps1;
	private static PreparedStatement ps2;
	
	static {
		
		try {
			
			ps1 = DBConnection.getConnection().prepareStatement("insert into media_info (media_id, ratings, length, discription, release_date, directors, actors) values (?, ?, ?, ?, ?, ?, ?)");
			ps2 = DBConnection.getConnection().prepareStatement("select ratings, length, discription, release_date, directors, actors from media_info where media_id = ?");
		
		}
		catch(SQLException sq) {
			System.out.println("static - StoreMediaInformationDao");
			sq.printStackTrace();
		}
		
	}
	
	public static MediaInfo getMediaAllInfo(String id) throws SQLException {
		
		ps2.setString(1, id);
		ResultSet rs = ps2.executeQuery();
		MediaInfo mediaInfo = null;
		while(rs.next()) {
			
			float ratings = rs.getFloat(1);
			java.sql.Time length = rs.getTime(2);
			String discription = rs.getString(3);
			java.sql.Date release_date = rs.getDate(4);
			String directors = rs.getString(5);
			String actors = rs.getString(6);
			
			mediaInfo = new MediaInfo(ratings, length, discription, release_date, directors, actors);
			
		}
		return mediaInfo;
	}
	
	
	public static boolean insertMediaInformation(MediaInfo mediaInfo) throws SQLException{
		
		ps1.setString(1, mediaInfo.getMedia_id());
		ps1.setFloat(2, mediaInfo.getRatings());
		ps1.setTime(3, mediaInfo.getLength());
		ps1.setString(4, mediaInfo.getDiscription());
		ps1.setDate(5, mediaInfo.getRelease_date());
		ps1.setString(6, mediaInfo.getDirectors());
		ps1.setString(7, mediaInfo.getActors());
		
		int a = ps1.executeUpdate();
		
		if(a > 0) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
}
