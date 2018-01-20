<#import "/WEB-INF/ftl/sharders/pc/mobile/layout.ftl" as lay/>
<#import "/WEB-INF/t/cms/www/sharder.org/ss_tpl_invest.ftl" as investTpl/>

<@lay.htmlHead    pagename="invest">
<link rel="stylesheet" href="/r/cms/resource/sharders/css/mobile/invest.css">
</@lay.htmlHead>
<@lay.htmlBody>
<div class="ss-mian">
    <section class="ss-main-title">
        <h3 class="ss-head i18n" name="sharder-s">豆匣众筹</h3>
        <ul>
            <li>
                <span class="ss-time i18n" name="sharder-time-start-end">1月18日-1月28日</span>
                <span class="ss-time i18n" name="sharder-angel-time-start-end">1月29日-2月11日</span>
                <span class="ss-time i18n" name="sharder-crowd-funding-time-start-end">2月23日-3月23</span></li>
            <li>
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img sharder-img">
                <img src="/r/cms/resource/sharders/img/yuan.png" class="ss-img">
            </li>
            <li class="ss-line"></li>
            <li>
                <span class="ss-text i18n" name="sharder-subscribe-reserve">白名单预约</span>
                <span class="ss-text i18n" name="sharder-angel">早鸟轮</span>
                <span class="ss-text i18n" name="sharder-crowd-funding">众筹轮</span>
            </li>
        </ul>
        <div class="sharder-link">
            <#--<button class="i18n" name="">已结束</button>-->
        <a href="/user_center/index.ss"><button class="subscribe-btn i18n" name="canyubaimingdan">获得优惠</button></a>
            <#--<a href="/invest/invest_item.ss"><button class="angel-btn subscribe-btn i18n" name="canyubaimingdan">正在进行</button></a>-->
        <#--<button class="i18n" name="">已结束</button>-->
        <button class="angel-btn i18n" name="canyubaimingdan">参与早鸟</button>
        <#--<a href="/invest/invest_crowd_funding.ss"><button class="crowd-funding-btn subscribe-btn i18n" name="canyubaimingdan">正在进行</button></a>-->
            <button class="crowd-funding-btn i18n" name="canyubaimingdan">参与众筹</button>
        </div>
        <ul class="sharder-money">
            <li><span class="i18n" name="crowd-step-whitelist1">白名单阶段:1ETH=70000SS</span></li>
            <li><span class="i18n" name="crowd-step-whitelist2">早鸟轮阶段:1ETH=55000SS</span></li>
            <li><span class="i18n" name="crowd-step-whitelist3">众筹轮(前三天):1ETH=35000SS</span></li>
            <li><span class="i18n" name="crowd-step-whitelist4">众筹轮阶段:1ETH=32000SS</span></li>
        </ul>

    </section>
    <section class="ss-main-plan">
        <h3 class="ss-head i18n" name="sharder-distribution">Token分配</h3>
        <p class="ss-plan-text i18n" name="sharder-invest-text3">本次众筹Token是(Sharder Storage 简称SS),SS是一种符合以太坊ERC20标准的Token。SS总共发行5亿,分配计划如下：</p>
        <div id="distribution_ratio" style="width: 320px;height: 256px; margin: auto" ></div>
        <@investTpl.tokenRatio/>
        <div class="see-details">
            <input type="checkbox" class="" id="rule" style="display: none">
            <label for="rule"><span class="i18n" name="token-rules">查看token众筹细则</span><img src="/r/cms/resource/sharders/img/tab.png" ></label>
            <@investTpl.investRules/>
        </div>
    </section>
    <section class="ss-main-participate">
        <div class="ss-participate-info" >
            <@investTpl.investFlow isMobile=true/>
        </div>
        <div class="ss-technological-process">
            <div class="technological-process-tab">
                <button class="official-website-direct-investment i18n" name="sharder-public-network" v-on:click="tabBtn(1)">官网直投<div></div></button>
                <button class="business-city i18n" name="sharder-business-city" v-on:click="tabBtn(0)">商城众筹<div></div></button>
            </div>
            <div class="liucheng">
                <ul class="ss-technological-step">
                    <li>
                        <span class="i18n" name="buzhou1">步骤一</span>
                        <button>{{!crowdFunding ? listDAta.g : listDAta.a}}</button>
                        <span class="tesu i18n" name="buzhou4">步骤四</span>
                        <button>{{!crowdFunding ? listDAta.i : listDAta.d}}</button>
                    <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">-->
                        <span class="tesu i18n" name="buzhou5">步骤五</span>
                        <button>{{!crowdFunding ? listDAta.k : listDAta.e}}</button>
                    </li>
                <#--<li>-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">-->
                <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">-->
                <#--</li>-->
                    <li>
                        <span class="i18n" name="buzhou2">步骤二</span>
                        <button>{{!crowdFunding ?  listDAta.h : listDAta.b}}</button>
                    <#--<img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">-->
                        <span class="tesu i18n" name="buzhou3">步骤三</span>
                        <button>{{!crowdFunding ? listDAta.i : listDAta.c}}</button>
                        <span class="tesu i18n" name="buzhou6">步骤六</span>
                        <button class="i18n" name="text-text6">完成众筹</button>
                    </li>
                </ul>
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img1">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img2">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img3">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img4">
                <img src="/r/cms/resource/sharders/img/left.png" class="technological-img5">
            </div>

            <p class="generalText i18n" name="sharder-flow-path-text6">注:本流程仅适用于早鸟轮阶段。个人众筹信息及兑换信息请登录进入个人中心查看详细说明。</p>
            <p class="generalText i18n" name="sharder-flow-path-text8">商城众筹所购买商将于众筹结束后7个工作日发货。</p>
        </div>
    </section>
    <section class="sharder-info" style="display: none">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="">早鸟轮(已结束)</h3>
            <p class="sharder-line-p"><span></span></p>
        </div>
    </section>
    <section class="ss-main-early-bird">
        <div class="sharder-line">
            <h3 class="sharder-early-bird i18n" name="sharder-angel-wheel">早鸟轮</h3>
            <p  class="sharder-early-bird-text i18n" name="sharder-invest-time-start-end">1月29日09:00-2月11日23:59</p>
            <p class="sharder-line-p"><span></span></p>
        </div>
        <ul class="ss-early-bird-text">
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-start-time">1.开始时间:</span>
                   <span class="i18n" name="sharder-invest-item-text2">北京时间2018年2月22日23:59，如下列任一目标达成则将立即停止早鸟轮。<br/>
                    &nbsp;&nbsp;1) 7,500,0000个SS全部售出。<br/>
                    &nbsp;&nbsp;2) SS售出超1950个ETH并到达截止时间2018年2月11日。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscription-ratio">2.兑换比例:</span><span class="i18n" name="sharder-invset-text4">
                        由于虚拟货币市场价格波动性，我们会在早鸟开始时间（北京时间2018年1月29日9:00）前一周确定锁定价格和兑换数量。<br/>
                        &nbsp;&nbsp;锁定价格：以交易所“币安”（官网www.binance.com）一周内收盘价均价确定锁定价格和兑换数量。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-investment-quota">3.参投限额:</span>
                    <span class="i18n" name="sharder-take-part-quota-rule">≥1ETH/人，或等额BTC，LTC。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-hair-time">4.发币时间:</span>
                    <span class="i18n" name="sharder-invset-text5">众筹结束后一周以内。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">5.</span>
                    <span class="i18n" name="sharder-invset-text6">早鸟轮结束以后进入审核阶段，于72小时内公布认购结果。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude">6.</span>
                    <span class="i18n" name="sharder-invset-text7">早鸟轮结束以后，将会通过官网直投、以太坊智能合约、交易所众筹进行公开众筹，以官网公告为准。</span>
                </li>
                <li class="generalTextColor">
                    <span class="crude i18n" name="sharder-subscribe">7.白名单:</span>
                    <span  class="i18n" name="sharder-invset-text8">早鸟轮结束以后，将会通过官网直投、以太坊智能合约、交易所众筹进行公开众筹，以官网公告为准。</span>
                </li>
        </ul>
        <button class="ss-btn i18n" name="sharder-immediate-participation" onclick="tabOpenUrl()">立即参与</button>
        <p class="ss-btn-text i18n" name="sharser-invset-text9">参与入口于早鸟(2018年1月29日)开始时开启</p>
    </section>
    <div class="text-text" style="display: none">
        <span class="i18n" name="text-text1">进入商城</span>
        <span class="i18n" name="text-text2">选择商品</span>
        <span class="i18n" name="text-text3">下单付款</span>
        <span class="i18n" name="text-text4">成功购买</span>
        <span class="i18n" name="text-text5">获得积分</span>
        <span class="i18n" name="text-text7">登录注册</span>
        <span class="i18n" name="text-text8">查看众筹</span>
        <span class="i18n" name="text-text9">进入众筹</span>
        <span class="i18n" name="text-text10">转账参与</span>
        <span class="i18n" name="text-text11">联系确认</span>
        <span class="i18n" name="sharder-angel">早鸟轮</span>
        <span class="i18n" name="navbar.zhongchou">众筹轮</span>
        <span class="i18n" name="text-text23">社区基金</span>
        <span class="i18n" name="text-text24">空投基金</span>
        <span class="i18n" name="text-text25">系统奖励</span>
        <span class="i18n" name="text-text26">团队基金</span>
    </div>
</div>
<script src="https://oss.sharder.org/sharder/js/echarts-all-3.js?v=${version!}" type="text/javascript"></script>
<script>
    var app = new Vue({
        el: ".ss-main-participate",
        data: {
            crowdFunding:true,
            bool:-1,
            listDAta:'',
        },
        methods: {
            tabBtn:function (num) {
                if(app.bool == num){
                    return ;
                }else {
                    app.bool = num;
                }
                $(".business-city").css("background-color","#000000");
                $(".official-website-direct-investment").css("background-color","#000000");

                $(".official-website-direct-investment div").css("display","none");
                $(".business-city div").css("display","none");
                if(app.crowdFunding){
                    $(".official-website-direct-investment").css("background-color","#0ba0d1");
                    $(".official-website-direct-investment div").css("display","block");
                }else{
                    $(".business-city").css("background-color","#0ba0d1");
                    $(".business-city div").css("display","block");
                }
                app.crowdFunding = !app.crowdFunding;
                app.listDAta ={a:$(".text-text span[name='text-text1']").text(),
                    b:$(".text-text span[name='text-text2']").text(),
                    c:$(".text-text span[name='text-text3']").text(),
                    d:$(".text-text span[name='text-text4']").text(),
                    e:$(".text-text span[name='text-text5']").text(),
                    f:$(".text-text span[name='text-text6']").text(),
                    g:$(".text-text span[name='text-text7']").text(),
                    h:$(".text-text span[name='text-text8']").text(),
                    i:$(".text-text span[name='text-text9']").text(),
                    j:$(".text-text span[name='text-text10']").text(),
                    k:$(".text-text span[name='text-text11']").text()}
            },
        }
    });
    app.tabBtn(1);
    function tabOpenUrl() {
//        window.location.href="/invest/invest_item.ss";
    }
</script>
<script>
    var myEcharts = echarts.init(document.getElementById("distribution_ratio"));
    option = {
        tooltip : {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        color:['#063b5b','#098b7d','#83a821','#c9800c','#0ba0d1','#dc5f0a'],
        series : [
            {
                type: 'pie',
                radius : '65%',
                center: ['50%', '50%'],
                selectedMode: 'single',
                data:[
                    {value:15, name: $(".text-text span[name='sharder-angel']").text()+'15%'},
                    {value:35, name: $(".text-text span[name='navbar.zhongchou']").text()+'35%'},
                    {value:10, name: $(".text-text span[name='text-text23']").text()+'10%'},
                    {value:10, name: $(".text-text span[name='text-text24']").text()+'10%'},
                    {value:20, name: $(".text-text span[name='text-text25']").text()+'20%'},
                    {value:10, name: $(".text-text span[name='text-text26']").text()+'10%'}
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    }
                }
            }
        ]
    };
    myEcharts .setOption(option, true);
</script>
</@lay.htmlBody>