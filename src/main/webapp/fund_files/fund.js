// const $ = require('jquery')(require("jsdom").jsdom().defaultView);//老版本
// 参考https://www.cnblogs.com/DonaHero/p/10001804.html
// const { setMaxIdleHTTPParsers } = require('http');
// const jsdom = require('jsdom');
// const {JSDOM} = jsdom;
// const {document} = (new JSDOM('<!doctype html><html><body></body></html>')).window;
// global.document = document;
// const window = document.defaultView;
// const $ = require('jquery')(window);
// var  navigator={};
// navigator.userAgent ='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36'


//以上定义jQuery  修改导出函数为$
// console.log(window.location.href);

//注意写法

// (function($) {
//  console.log(navigator.userAgent)
//     console.log($('p'))
// })($);




// console.log(r[0][0])
// console.log(r[0][1])

function sleep(sleepDuration) {
    var now = new Date().getTime();
    while (new Date().getTime() < now + sleepDuration) { /* Do nothing */
    }
}

// console.log(r.length)
// for (var i = 0; i < 1000; i++) {

const chalk = require("chalk")
const fetch = require("node-fetch")


for (var i = 0; i < 1000; i++) {
    const url = encodeURI('http://localhost:8081/fund_war_exploded/addFund?fid=' + r[i][0] + '&fname=' + r[i][2]);
    console.log(url);

    (async () => {
        const response = await fetch(url);
        const body = await response.text();

        console.log(body);
        console.log("miaomiao");
    })();
    console.log("xixixi")
    sleep(10000000);

// const str =encodeURI('url');
// console.log('http://localhost:8081/fund_war_exploded/addFund?fid=' + r[0][0] + '&fname=' + r[0][2]);

    // fetch(url, {
    //     method: 'GET',
    //     // data: {
    //     //     fid: r[0][0],
    //     //     fname: r[0][2]
    //     // }
    // })
    //     .then(async res => {
    //         let {data} = await res.text()
    //         console.log(data)
    //         console.log("xixixi");
    //         // data.forEach(item => {
    //         //     console.log(`${chalk.yellow.bold(item.rank)}.${chalk.green(item.category_name)}`);
    //         // })
    //     })
    //     .catch(err => {
    //         console.log('Error: ', err.message);
    //     });
    // if (i % 1000 == 0) {
    //     sleep(1000000);
    // }

}

    // $.ajax({
    //     url: "http://localhost:8081/fund_war_exploded/addFund",
    //     type: "post",
    //     data: {
    //         fid: r[i][0],
    //         fname: r[i][2]
    //     },
    //     success: function(data) {
    //         console.log("xixixi");
    //     },
    //     error: function() {
    //         console.log("wuwuwu")
    //     }
    // })

//     console.log(r[i][0] + " " + r[i][2])
//     // if (i % 1000 == 0) {
//     //     sleep(20000);
//     // }
// }