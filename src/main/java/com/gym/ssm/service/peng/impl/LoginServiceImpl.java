package com.gym.ssm.service.peng.impl;

import com.gym.ssm.entity.peng.Admin;
import com.gym.ssm.entity.peng.Coach;
import com.gym.ssm.entity.peng.Vip;
import com.gym.ssm.service.peng.LoginService;
import com.gym.ssm.tk.mapper.peng.AdminMapper;
import com.gym.ssm.tk.mapper.peng.CoachMapper;
import com.gym.ssm.tk.mapper.peng.VipMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * @ProjectNmae:GYM03
 * @ClassName:UserService
 * @Description: TOOO
 * @Author:peng
 * @Date:2019/2/25 19:34
 * @Version:1.0
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private VipMapper vipMapper;
    @Autowired
    private CoachMapper coachMapper;


    @Override
    public Admin adminLogin(String name, String pword) {
        Admin admin = new Admin();
        admin.setAname(name);
        admin.setApword(pword);
        Admin getAdmin = adminMapper.selectOne(admin);
        return getAdmin;
    }

    @Override
    public Vip vipLogin(String name, String pword) {
        Vip vip = new Vip();
        vip.setHname(name);
        vip.setHpwd(pword);
        Vip getVip = vipMapper.selectOne(vip);
        return vip;
    }

    @Override
    public Coach coachLogin(String name, String pword) {
        Coach coach = new Coach();
        coach.setJname(name);
        coach.setJpwd(pword);
        Coach getCoach = coachMapper.selectOne(coach);
        return null;
    }


//    @Override
//    public String  Login(String name, String pword) {
//        Vip vip = new Vip();
//        vip.setHname(name);
//        vip.setHpwd(pword);
//        Coach coach=new Coach();
//        coach.setJname(name);
//
//            Vip vip1 = vipMapper.selectOne(vip);
//        if (vip1.equals(null)) {
//
//        }else{
//
//        }
//
//
//        return "";
//    }
}
