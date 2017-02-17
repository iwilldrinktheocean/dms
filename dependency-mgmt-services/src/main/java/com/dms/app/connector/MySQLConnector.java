package com.dms.app.connector;


import org.springframework.stereotype.Component;

@Component
public class MySQLConnector{
	
	

	
	/*@Autowired 
	private BaseDao baseDao;*/

	public String getConnection(){
		/*
		try{
		System.out.println("jdbc template SYAM count" +baseDao.getJdbcTemplate().queryForObject("select count(*) from actor", Integer.class));
		}catch(Exception ex){
			
			return "failed";
		}*/
		
		return "Success";
	}
	
	
/*	public String getConnection() {

		try {
			String firstName = "PENELOPE";
			String sql = "select count(*) from ACTOR where first_name = :first_name";

			SqlParameterSource namedParameters = new MapSqlParameterSource(
					"first_name", firstName);
			System.out.println("jdbc template SYAM count"
					+ this.namedParameterJdbcTemplate.queryForObject(sql,
							namedParameters, Integer.class));
		} catch (Exception ex) {

			return "failed";
		}

		return "Success";
	}*/
}