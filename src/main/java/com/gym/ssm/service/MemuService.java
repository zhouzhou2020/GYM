package com.gym.ssm.service;

import com.gym.ssm.entity.peng.Memu;
import com.gym.ssm.entity.peng.TreeNode;

import java.util.List;

/**
 * @ProjectNmae:GYM03
 * @ClassName:MemuService
 * @Description: TOOO
 * @Author:peng
 * @Date:2019/2/26 9:32
 * @Version:1.0
 */
/*
3.2
 */
public interface MemuService {
    List<Memu> getmemu(String mid);

    List<Memu> getTreeZNode(String mid);
}
