package dto;

public class UserDTO {
	String id;
	String passwd;
	String name;
	String nickName;
	String phoneNumber;
	int isVerified;
	int gender;
	String addr;
	String profileImage;

	public UserDTO(String id, String passwd, String name, String nickName, String phoneNumber, int isVerified,
			int gender, String addr, String profileImage) {
		this.id = id;
		this.passwd = passwd;
		this.name = name;
		this.nickName = nickName;
		this.phoneNumber = phoneNumber;
		this.isVerified = isVerified;
		this.gender = gender;
		this.addr = addr;
		this.profileImage = profileImage;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getIsVerified() {
		return isVerified;
	}

	public void setIsVerified(int isVerified) {
		this.isVerified = isVerified;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
}
