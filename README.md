# 普通生态学3 第二次课程报告

Date: 2021-5-22

Author: Sid

## 简介

已经重新设计了增温情境，进行模拟，获得了数据。

## 作业要求

完成课程作业中第二组的要求，第(3),(4)小题。

![](README.assets/第四讲-碳循环part1_页面_098.jpg)

![第四讲-碳循环part1_页面_099](README.assets/第四讲-碳循环part1_页面_099.jpg)

![第四讲-碳循环part1_页面_100](README.assets/第四讲-碳循环part1_页面_100.jpg)

## 文件说明

首先按照题目进行模拟用的文件，也是这次作业可以再次利用的部分：

* **main.m** ：是进行**数据模拟的程度代码**。
* **simulation_data.xlsx**： 包含了**基础数据**，是对温度变化情景的模拟。
  * GPP是初级生产力
  * RES是总呼吸
  * Csink是碳库大小
  * NEP是净生态系统生产力
  * 各种增温情景已经在列标题中标出来了，如“5度0.01度”就是初始温度5度的地区，经过300年0.01度/yr的增温。
* **[Modeling](Modeling.pdf)** ：是进行建模的科学依据、数学分析以及代码说明，可以直接去[我的网站](http://www.mmm886.top/model.html)去看。
* **classnote.pdf**： 是老师上课的课件，因为github是开放的，所以我给加了密码（是老师名字的全拼）。需要不带密码的可以去课程群里下。
* **report.pptx**：是最后课程汇报使用的PPT。
* **simulation_data.mat**：模拟结果，与前面的simulation_data.xlsx是相同的数据，只是以`.mat`格式存储。
* **analysis.m**：是进行分析使用的MATLAB代码
* **cmap.mat**：用于MATLAB绘图的colormap。

Github中的[2020分支](https://github.com/sidpku/HW_GeneralEcology/tree/2020)保存了2020年的数据和分析结果，需要的话可以去那里找。



