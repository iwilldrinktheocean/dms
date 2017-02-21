/**
 * 
 */
package com.dms.app.data.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.dms.model.KnownDifferencesGaps;

/**
 * @author Richa Prasad
 *
 */
public class KnownDifferencesGapsRowMapper implements RowMapper<KnownDifferencesGaps> {

	@Override
	public KnownDifferencesGaps mapRow(ResultSet rs, int rowNum) throws SQLException {
		KnownDifferencesGaps knownDifferencesGaps = new KnownDifferencesGaps();
		knownDifferencesGaps.setGap1(rs.getLong("GAP1"));	
		knownDifferencesGaps.setGap2(rs.getLong("GAP2"));
		knownDifferencesGaps.setGap3(rs.getLong("GAP3"));
		knownDifferencesGaps.setGap4(rs.getLong("GAP4"));
		knownDifferencesGaps.setGap5(rs.getLong("GAP5"));
		return knownDifferencesGaps;
	}

}
