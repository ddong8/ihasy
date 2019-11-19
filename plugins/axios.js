export default function ({$axios, redirect}) {
  //添加请求拦截器
  $axios.interceptors.request.use(config => {
    //在发送请求之前做某事，比如说 设置loading动画显示

    //根据接口传入参数显示加载动画
    showFullScreenLoading();
    return config
  }, error => {
    //请求错误时做些事
    return Promise.reject(error)
  });

  //添加响应拦截器
  $axios.interceptors.response.use(response => {
    //对响应数据做些事，比如说把loading动画关掉

    //暂停加载动画
    tryHideFullScreenLoading();
    return response
  }, error => {
    //请求错误时做些事
    return Promise.reject(error)
  });
}


//声明一个对象用于存储请求个数
let needLoadingRequestCount = 0;

function showFullScreenLoading() {
  if (needLoadingRequestCount === 0) {
    startLoading();
  }
  needLoadingRequestCount++;
}

function tryHideFullScreenLoading() {
  if (needLoadingRequestCount <= 0) return;
  needLoadingRequestCount--;
  if (needLoadingRequestCount === 0) {
    endLoading();
  }
}

function startLoading() {
  loading = Vue.prototype.$loading({
    lock: true,
    text: "加载中...",
    background: "rgba(0, 0, 0, 0.8)",
    target: document.querySelector('#table')//设置加载动画区域
  });
}

function endLoading() {
  loading.close();
}
