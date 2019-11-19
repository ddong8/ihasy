<template>
  <el-menu
    class="el-menu-demo"
    mode="horizontal"
    background-color="#545c64"
    text-color="#fff"
    active-text-color="#ffd04b">
    <el-submenu index="2">
      <template slot="title">我的工作台</template>
      <nuxt-link :to="'/host/sys_host'"><p style="color: rgb(255, 255, 255)">系统主机列表</p></nuxt-link>
      <nuxt-link :to="'/host/sys_host'"><p style="color: rgb(255, 255, 255)">不连通主机列表</p></nuxt-link>
      <nuxt-link :to="'/host/sys_host'"><p style="color: rgb(255, 255, 255)">含有不支持监控项主机列表</p></nuxt-link>
    </el-submenu>
    <el-menu-item index="3" disabled>消息中心</el-menu-item>
    <div style="float: right;height: 60px;padding-right: 30px;">
      <div style="padding-top: 20px;">
        <span style="margin-right: 5px;"><a style="color: #409eff;"> hi，您好！</a></span>
        <el-dropdown>
          <i class="el-icon-setting" style="margin-right: 15px"></i>
          <el-dropdown-menu slot="dropdown">
            <el-dropdown-item><a href="">注销</a></el-dropdown-item>
          </el-dropdown-menu>
        </el-dropdown>
        <span style="margin-right: 5px;"><a href="" style="color: #409eff;">请登陆!</a></span>
      </div>
    </div>
  </el-menu>
</template>
