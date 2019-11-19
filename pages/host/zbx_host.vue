<template>
  <div>
    <div aria-label="Breadcrumb" role="navigation" class="el-breadcrumb" style="margin-bottom: 20px">
        <span class="el-breadcrumb__item">
            <span role="link" class="el-breadcrumb__inner is-link"><a href="{% url 'index' %}">
              <i class="fa fa-home fa-fw" aria-hidden="true"></i>首页</a></span>
                      <i class="el-breadcrumb__separator el-icon-arrow-right"></i>
        </span>
      <span class="el-breadcrumb__item">
            <span role="link" class="el-breadcrumb__inner"><i class="fa fa-cubes fa-fw" aria-hidden="true"></i>组件 &
              <i class="fa fa-desktop fa-fw" aria-hidden="true"></i>主机</span>
                    <i class="el-breadcrumb__separator el-icon-arrow-right"></i>
        </span>
    </div>
    <el-table
      :data="tableData.slice((currentPage-1)*pageSize,currentPage*pageSize)"
      border
      :row-class-name="tableRowClassName"
      :header-cell-style="{background:'#02a7f0',color:'#FFFFFF'}"
      style="width: 100%">
      <el-table-column type="expand">
        <template slot-scope="props">
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <i class="fa fa-cube" aria-hidden="true"></i>
              <span style="font-size: medium;font-weight: 600;">组件详情</span>
            </div>
            <span style="color: #67c23a;font-weight: 600;">相同项:</span>
            <el-table
              :data="props.row.same_list"
              border
              :header-cell-style="{background:'#5a4e4f',color:'#FFFFFF'}"
              style="width: 96%; margin-left: 2%;margin-top: 5px;margin-bottom: 5px;font-size: x-small">
              <el-table-column
                label="模板">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.same_template)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="模板名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.same_template) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="监控项">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.same_trigger)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="监控项名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.same_trigger) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="触发器">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.same_item)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="480"
                                       label="触发器名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.same_item) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="图形">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.same_graph)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="图形名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.same_graph) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="web监测">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.same_httptest)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="web监测名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.same_httptest) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
            </el-table>
            <span style="color: #f56c6c;font-weight: 600;">不同项:</span>
            <el-table
              :data="props.row.diff_list"
              border
              :header-cell-style="{background:'#5a4e4f',color:'#FFFFFF'}"
              style="width: 96%; margin-left: 2%;margin-top: 5px;margin-bottom: 5px;font-size: x-small">
              <el-table-column
                label="模板">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_template)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="模板名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_template) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="监控项">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_item)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="监控项名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_item) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="触发器">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_trigger)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="480"
                                       label="触发器名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_trigger) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="图形">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_graph)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="图形名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_graph) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="web监测">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_httptest)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="web监测名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_httptest) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
            </el-table>
            <span style="color: #409eff;font-weight: 600;">不同项分主机详情:</span>
            <el-table
              :data="props.row.zbx_host_list.slice((getCurrentPage[props.row.index*2]-1)*getPageSize[props.row.index*2],getCurrentPage[props.row.index*2]*getPageSize[props.row.index*2])"
              border
              :header-cell-style="{background:'#5a4e4f',color:'#FFFFFF'}"
              style="width: 96%; margin-left: 2%;margin-top: 5px;margin-bottom: 5px;font-size: x-small">
              <el-table-column
                prop="name"
                label="主机名称">
                <template slot-scope="scope">
                  <span style="color: #6266ff;font-weight: 500"><u>{{ scope.row.name }}</u></span>
                </template>
              </el-table-column>
              <el-table-column prop="ip"
                               label="IP">
                <template slot-scope="scope">
                  <span style="color: #000000;font-weight: 500;">{{ scope.row.ip }}</span>
                </template>
              </el-table-column>
              <el-table-column
                label="模板">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_templates)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="模板名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_templates) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="监控项">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_items)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="350"
                                       label="监控项名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_items) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="触发器">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_triggers)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="480"
                                       label="触发器名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_triggers) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="图形">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_graphs)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="图形名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_graphs) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
              <el-table-column
                label="web监测">
                <template slot-scope="scope">
                  <el-popover
                    placement="bottom"
                    trigger="click">
                    <el-table :data="handleArr(scope.row.diff_httptests)" border size="mini"
                              max-height="500">
                      <el-table-column property="id" max-width="80" label="序号"></el-table-column>
                      <el-table-column property="item" min-width="300"
                                       label="web监测名称"></el-table-column>
                    </el-table>
                    <el-button slot="reference"><span
                      style="color: #ff2126">{{ item_count(scope.row.diff_httptests) }}</span>
                    </el-button>
                  </el-popover>
                </template>
              </el-table-column>
            </el-table>
            <div class="block" style="margin-top: 20px; margin-bottom: 20px; margin-left: 3%">
              <el-pagination
                @size-change="handleSizeChange($event, props.row.index*2, 'host_list')"
                @current-change="handleCurrentChange($event, props.row.index*2, 'host_list')"
                :current-page.sync="getCurrentPage[props.row.index*2]"
                :page-sizes="[6, 12]"
                :page-size.sync="getPageSize[props.row.index*2]"
                layout="total, sizes, prev, pager, next, jumper"
                :total="item_count(props.row.zbx_host_list)">
              </el-pagination>
            </div>
          </el-card>
          <br>
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <i class="fa fa-desktop" aria-hidden="true"></i>
              <span style="font-size: medium;font-weight: 600;">主机详情</span>
            </div>
            <span style="color: rgb(103, 194, 58);font-weight: 600;">正常状态主机有
                            <span style="color: #a41515">{{ props.row.normal_host_count }}</span> 台</span>
            <br>
            <br>
            <span style="color: rgb(245, 108, 108);font-weight: 600;">异常状态主机详情:</span>
            <br>
            <el-table
              :data="props.row.error_hosts.slice((getCurrentPage[props.row.index*2 + 1]-1)*getPageSize[props.row.index*2 + 1],getCurrentPage[props.row.index*2 + 1]*getPageSize[props.row.index*2 + 1])"
              border
              :header-cell-style="{background:'#5a4e4f',color:'#FFFFFF'}"
              style="width: 96%; margin-left: 2%;margin-top: 5px;font-size: x-small">
              <el-table-column
                prop="name"
                label="主机名称">
                <template slot-scope="scope">
                  <span style="color: #6266ff;font-weight: 500"><u>{{ scope.row.name }}</u></span>
                </template>
              </el-table-column>
              <el-table-column prop="ip"
                               label="IP">
                <template slot-scope="scope">
                  <span style="color: #000000;font-weight: 500;">{{ scope.row.ip }}</span>
                </template>
              </el-table-column>
              <el-table-column prop="status"
                               label="状态">
                <template slot-scope="scope">
                                <span v-if="scope.row.status== '0'"
                                      style="color: #59db8f">启用</span>
                  <span v-else style="color: #ff2126">禁用</span>
                </template>
              </el-table-column>
              <el-table-column prop="zbx_status"
                               label="Agent可用性">
                <template slot-scope="scope">
                                <span v-if="scope.row.zbx_status== '0'"
                                      style="color: #1AE642">可用</span>
                  <span v-else style="color: #ff2126">不可用</span>
                </template>
              </el-table-column>
            </el-table>
            <div class="block" style="margin-top: 20px; margin-bottom: 20px; margin-left: 3%">
              <el-pagination
                @size-change="handleSizeChange($event, props.row.index*2 + 1, 'host_list')"
                @current-change="handleCurrentChange($event, props.row.index*2 + 1, 'host_list')"
                :current-page.sync="getCurrentPage[props.row.index*2 + 1]"
                :page-sizes="[6, 12]"
                :page-size.sync="getPageSize[props.row.index*2 + 1]"
                layout="total, sizes, prev, pager, next, jumper"
                :total="item_count(props.row.error_hosts)">
              </el-pagination>
            </div>
          </el-card>
        </template>
      </el-table-column>
      <el-table-column
        label="序号"
        type="index"
        width="50">
      </el-table-column>
      <el-table-column
        label="系统名称"
        prop="system_name">
      </el-table-column>
      <el-table-column
        label="组件名称"
        prop="app_name">
      </el-table-column>
      <el-table-column
        label="主机数量">
        <template slot-scope="props">
          <span style="color: #ff2126;font-weight: 600;">{{ item_count(props.row.host_lists) }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="被监控主机数量">
        <template slot-scope="props">
          <span style="color: #ff2126;font-weight: 600;">{{ item_count(props.row.zbx_host_list) }}</span>
        </template>
      </el-table-column>
    </el-table>

    <div class="block" style="margin-top: 20px; margin-bottom: 20px; margin-left: 3%">
      <el-pagination
        @size-change="handleSizeChange($event, 1, 'app_list')"
        @current-change="handleCurrentChange($event, 1, 'app_list')"
        :current-page="currentPage"
        :page-sizes="[8, 16]"
        :page-size="pageSize"
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
                tableData: [],
                currentPage: 1,
                tempArr: [],
                resp_data: [],
                pageSize: 8,
                totalNum: 0,
                getCurrentPage: [],
                getPageSize: []
            };
        },
        async asyncData({$axios, route}) {
            let app_list = route.query.apps_list;
            let host_lists = await $axios.$get('dabix/api/apps/' + app_list + '/host_list');
            return {host_lists};
        },
        methods: {
            loadAll() {
                for (let i = 0; i < this.host_lists.length; i++) {
                    this.getCurrentPage.push(i * 2);
                    this.getPageSize.push(i * 2);
                    this.getCurrentPage.push(i * 2 + 1);
                    this.getPageSize.push(i * 2 + 1);
                    this.getCurrentPage[i * 2] = 1;
                    this.getPageSize[i * 2] = 6;
                    this.getCurrentPage[i * 2 + 1] = 1;
                    this.getPageSize[i * 2 + 1] = 6
                }
                this.totalNum = this.host_lists.length;
                this.resp_data = this.host_lists;
                this.tempArr = this.currentArr(this.page_size, this.resp_data);
                return this.tempArr[0];
            },
            handleArr(arr) {
                if (!arr) {
                    return []
                } else {
                    let newArr = [];
                    for (let i = 0; i < arr.length; i++) {
                        newArr[i] = {'id': i + 1, 'item': arr[i]}
                    }
                    return newArr
                }
            },
            tableRowClassName({row, rowIndex}) {
                //把每一行的索引放进row
                row.index = rowIndex;
            },
            item_count(item_list) {
                if (!item_list) {
                    return 0
                } else {
                    return item_list.length
                }
            },
            formatterColumn(cellValue) {
                if (!cellValue) {
                    return ''
                } else {
                    let html_str = cellValue.join('<br>');
                    html_str = '<div style="font-size:10px">' + html_str + '</div>';
                    return html_str
                }
            },
            handleSizeChange(val, index, type) {
                if (type === 'app_list') {
                    this.pageSize = val;
                } else {
                    this.getPageSize[index] = val
                }
            },
            handleCurrentChange(val, index, type) {
                if (type === 'app_list') {
                    this.currentPage = val;
                } else {
                    this.getCurrentPage[index] = val;
                }
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
            handleClick(host_id, item_type) {
                if (item_type === 'item') {
                    window.location.href = "../../host/" + host_id + "/error_item"
                } else {
                    window.location.href = "../../host/" + host_id + "/error_trigger"
                }
            },
            filterHost(host_lists) {
                if (!host_lists) {
                    return host_lists
                } else {
                    if (host_lists.length > 5) {
                        return host_lists.slice(0, 4)
                    } else {
                        return host_lists
                    }
                }
            }
        },
        mounted() {
            this.tableData = this.loadAll();
        }
    }
</script>

<style scoped>

</style>
