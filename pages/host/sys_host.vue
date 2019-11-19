<template>
  <div>
    <div style="text-align: center; margin-top: 60px; width: 80%; padding-left: 10%;">
      <span style="font-weight: bold; font-family: cursive; font-size: larger;">请选择系统:</span>
      <el-select
        v-model="value5"
        multiple
        filterable
        remote
        reserve-keyword
        placeholder="选择系统名称"
        :remote-method="remoteMethod"
        :loading="loading"
        style="width: 380px;">
        <el-option
          v-for="item in options"
          :key="item.value"
          :label="item.label"
          :value="item.label"><span style="float: left">{{ item.label }}</span> <span
          style="float: right; padding-right: 20px"> <a
          style="color: #a41515;font-weight: bolder">{{ item.count }}</a> 台主机</span>
        </el-option>
      </el-select>
      <el-button type="primary" style="margin-left: 7px;" @click="search_app_list" round>查询组件</el-button>
    </div>
    <el-table
      ref="multipleTable"
      :data="tableData.filter(data => !search || data.name.toLowerCase().includes(search.toLowerCase()))"
      tooltip-effect="dark"
      border
      style="margin-top: 40px; width: 96%; margin-left: 2%;"
      :header-cell-style="{background:'#02a7f0',color:'#FFFFFF'}"
      @selection-change="handleSelectionChange">
      <el-table-column
        type="selection"
        width="55">
      </el-table-column>
      <el-table-column
        prop="system_name"
        label="系统名称"
        width="150">
      </el-table-column>
      <el-table-column
        prop="name"
        label="组件名称"
        width="200">
      </el-table-column>
      <el-table-column
        prop="name"
        label="组件详情">
      </el-table-column>
      <el-table-column
        align="center">
        <template slot="header" slot-scope="scope">
          <el-input
            v-model="search"
            size="mini"
            placeholder="输入组件名称关键字搜索"/>
        </template>
        <template slot-scope="scope">
          <el-button
            size="mini">运维A岗: {{ scope.row.operator_a }}
          </el-button>
          <el-button
            size="mini">运维B岗: {{ scope.row.operator_b }}
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <div style="margin-top: 16px; float: right; margin-right: 10%">
      <el-button type="primary" @click="search_host_list" round>查询主机</el-button>
    </div>
    <div class="block" style="margin-top: 20px; margin-bottom: 20px; margin-left: 3%">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="currentPage"
        :page-sizes="[20, 40, 60, 80]"
        :page-size="page_size"
        layout="total, sizes, prev, pager, next, jumper"
        :total="totalNum">
      </el-pagination>
    </div>
  </div>
</template>

<script>
    export default {
        data() {
            return {
                options: [],
                value5: [],
                list: [],
                loading: false,
                restaurants: [],
                state: '',
                timeout: null,
                tableData: [],
                multipleSelection: [],
                search: '',
                currentPage: 1,
                tempArr: [],
                resp_data: [],
                page_size: 15,
                totalNum: 0,
                sys_list: []
            };
        },
        async asyncData({$axios}) {
            let sys_lists = await $axios.$get(`dabix/api/sys/sys_list`);
            return {sys_lists};
        },
        methods: {
            loadAll() {
                return this.sys_lists;
            },
            handleSizeChange(val) {
                this.page_size = val;
                this.tempArr = this.currentArr(this.page_size, this.resp_data);
                this.tableData = this.tempArr[0];
            },
            handleCurrentChange(val) {
                this.tableData = this.tempArr[val - 1];
            },
            currentArr(size, arr) {
                let newArr = [];
                this.totalNum = arr.length; // 数组长度
                let num = size;  // 每页显示条数
                let index = 0;
                for (let i = 0; i < this.totalNum; i++) {
                    if (i % num === 0 && i !== 0) { // 可以被 size 整除
                        newArr.push(arr.slice(index, i));
                        index = i;
                    }
                    if ((i + 1) === this.totalNum) {
                        newArr.push(arr.slice(index, (i + 1)));
                    }
                }
                return newArr
            },
            search_app_list() {
                if (this.value5.length === 0) {
                    this.$alert('请选择系统!', '提示', {
                        confirmButtonText: '确定',
                        type: 'warning'
                    });
                } else {
                    this.sys_list = [];
                    for (let i = 0; i < this.value5.length; i++) {
                        for (let j = 0; i < this.list.length; j++) {
                            if (this.value5[i] === this.list[j].label) {
                                this.sys_list[i] = this.list[j].value;
                                break;
                            }
                        }
                    }
                    this.$axios.$get(
                        'dabix/api/sys/' + this.sys_list + '/app_list'
                    ).then((response) => {
                        let json_data = response;
                        this.resp_data = json_data['all_app_list'];
                        this.totalNum = json_data['total_count'];
                        this.tempArr = this.currentArr(this.page_size, this.resp_data);
                        this.tableData = this.tempArr[0]
                    });
                }
            },
            search_host_list() {
                let selectedArr = this.multipleSelection;
                let apps_list = [];
                if (selectedArr.length === 0) {
                    this.$alert('请选择组件!', '提示', {
                        confirmButtonText: '确定',
                        type: 'warning'
                    });
                } else {
                    for (let i = 0; i < selectedArr.length; i++) {
                        apps_list[i] = selectedArr[i]['id'];
                    }
                    this.$router.push({path: '/host/zbx_host', query: {apps_list: apps_list}});
                }
            },
            searchEnterFun: function (e) {
                let keyCode = window.event ? e.keyCode : e.which;
                if (keyCode == 13 && this.search) {
                    this.tableData = this.resp_data.filter(item => {
                        // filter()对象遍历,true 返回对象参数值,如果多条数据,自动使用数组拼接
                        let host_list = JSON.parse(item.search_index);
                        if (!host_list === false) {
                            for (let i = 0; i < host_list.length; i++) {
                                if (!host_list[i]['ip'] === false) {
                                    if (host_list[i]['ip'].includes(this.search)) {
                                        return item
                                    }
                                }
                                if (!host_list[i]['name'] === false) {
                                    if (host_list[i]['name'].includes(this.search)) {
                                        return item
                                    }
                                }
                            }
                        }
                    })
                } else if (keyCode == 13 && !this.search) {
                    this.tableData = this.tempArr[0]
                }
            },
            handleSearch() {
                if (!this.search) {
                    return this.tableData
                } else {
                    return this.resp_data.filter(item => {
                        // filter()对象遍历,true 返回对象参数值,如果多条数据,自动使用数组拼接
                        console.log(item);
                        let host_list = item.host_list;
                        if (!host_list === false) {
                            for (let i = 0; i < host_list.length; i++) {
                                if (!host_list[i]['host_ip'] === false) {
                                    if (host_list[i]['host_ip'].includes(this.search)) {
                                        return item
                                    }
                                }
                                if (!host_list[i]['name'] === false) {
                                    if (host_list[i]['name'].includes(this.search)) {
                                        return item
                                    }
                                }
                            }
                        }
                    })
                }
            },

            handleSelect(item) {
                axios.get('../../dabix/api/sys/' + item.id + '/app_list')
                    .then(response => this.tableData = response.data);
            },
            handleSelectionChange(rows) {
                this.multipleSelection = rows;
            },
            remoteMethod(query) {
                if (query !== '') {
                    this.loading = true;
                    setTimeout(() => {
                        this.loading = false;
                        this.options = this.list.filter(item => {
                            return item.label.toLowerCase()
                                .indexOf(query.toLowerCase()) > -1;
                        });
                    }, 200);
                } else {
                    this.options = [];
                }
            },
        },
        mounted() {
            this.restaurants = this.loadAll();
            this.list = this.sys_lists.map(item => {
                return {value: item.id, label: item.name, count: item.host_count};
            });
        }
    }
</script>

<style scoped>

</style>
