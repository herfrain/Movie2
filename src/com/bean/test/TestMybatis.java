package com.bean.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.bean.dao.CommentMapper;
import com.bean.dao.UserMapper;
import com.bean.model.Comment;
import com.bean.model.User;

public class TestMybatis {
	
	private SqlSessionFactory sessionFactory;
    private static SqlSession session;
    private UserMapper mapper;
    @Before
    public void setup() {
        String resource = "mybatis.xml";
        InputStream is = null;
        try {
            is = Resources.getResourceAsStream(resource);
            sessionFactory = new SqlSessionFactoryBuilder().build(is);
            session = sessionFactory.openSession();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    @Test
    public void getObjects() {
        // 分页查询
        // 获取 映射 借口 对象 ;
    	User user=new User();
    	user.setUserid("22");
    	user.setUsername("hefeng");
    	user.setUserpassword("hefeng123");
    	user.setUserdate("2019-4-12");
        mapper = session.getMapper(UserMapper.class);
//        mapper.insert(user);
        
        Comment comment=new Comment();
        comment.setCommentsid("22");
        session.getMapper(CommentMapper.class).insert(comment);
        
        List<User> users=mapper.getUserList();
        for (User u : users) {
            System.out.println(u);
        }
        session.commit();//提交才真正添加到
        session.close();
    }

    @After
    public void result() {
        if (sessionFactory != null) {
            sessionFactory = null;
        }
        if (session != null) {
            session = null;

        }
    }
}
