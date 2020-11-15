package edu.jmi.dgsx.dao;

import edu.jmi.dgsx.po.qy_job;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface qy_jobMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(qy_job record);

    qy_job selectByPrimaryKey(Integer id);

    List<qy_job> selectAll();

    int updateByPrimaryKey(qy_job record);
}