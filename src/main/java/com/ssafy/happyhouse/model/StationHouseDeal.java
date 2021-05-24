package com.ssafy.happyhouse.model;

public class StationHouseDeal extends HouseDealDto {
	private String station_id;
	private String authority;
	private String line_number;
	private String station_name;
	private String jibun_address;
	private String doro_address;
	
	public String getStation_id() {
		return station_id;
	}
	public void setStation_id(String station_id) {
		this.station_id = station_id;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public String getLine_number() {
		return line_number;
	}
	public void setLine_number(String line_number) {
		this.line_number = line_number;
	}
	public String getStation_name() {
		return station_name;
	}
	public void setStation_name(String station_name) {
		this.station_name = station_name;
	}
	public String getJibun_address() {
		return jibun_address;
	}
	public void setJibun_address(String jibun_address) {
		this.jibun_address = jibun_address;
	}
	public String getDoro_address() {
		return doro_address;
	}
	public void setDoro_address(String doro_address) {
		this.doro_address = doro_address;
	}
	
	@Override
	public String toString() {
		return "StationHouseDeal [station_id=" + station_id + ", authority=" + authority + ", line_number="
				+ line_number + ", station_name=" + station_name + ", jibun_address=" + jibun_address
				+ ", doro_address=" + doro_address + "]";
	}
	
}
