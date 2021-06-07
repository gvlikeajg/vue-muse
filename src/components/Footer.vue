<template>
<div class="main_footer">

    <div class="footer_con1">
        <div class="logobottom">
            <a href=""></a>
        </div>

        <div class="qrcodes_bottom">

            <div class="item">
                <div class="icon icon1"></div>
                <div class="words">
                    <span class="t">美食杰APP</span>
                    <span class="des">扫码免费安装</span>
                </div>
                <div class="qrcode"><img src="https://st-cn.meishij.net/p2/20210316/20210316170511_464.png" alt=""><div class="arrow"></div></div>
            </div>

            <div class="item">
                <div class="icon icon2"></div>
                <div class="words">
                    <span class="t">美食杰微信小程序</span>
                    <span class="des">微信扫码进入</span>
                </div>
                <div class="qrcode"><img src="https://st-cn.meishij.net/p2/20210125/20210125110031_184.png" alt=""><div class="arrow"></div></div>
            </div>

            <div class="item">
                <div class="icon icon3"></div>
                <div class="words">
                    <span class="t">美食杰公众号</span>
                    <span class="des">微信扫码关注</span>
                </div>
                <div class="qrcode"><img src="https://s1.st.meishij.net/p2/20190105/20190105183409_923.png" alt=""><div class="arrow"></div></div>
            </div>

            <a href="https://weibo.com/meishij" target="_blank" class="item">
                <div class="icon icon4"></div>
                <div class="words">
                    <span class="t">美食杰官方微博</span>
                    <span class="des">扫码关注，点击进入</span>
                </div>
                <div class="qrcode"><img src="https://s1.st.meishij.net/p2/20190105/20190105183409_951.png" alt=""><div class="arrow"></div></div>
            </a>

        </div>

    </div>

    <div class="footer_con2">
        <ul>
            <li><a target="_blank" href="https://j.meishi.cc/" title="公司简介">公司简介</a></li>
            <li><a target="_blank" href="https://j.meishi.cc/aboutus.html" title="关于我们">关于我们</a></li>
            <li><a target="_blank" href="https://j.meishi.cc/download.html" title="产品下载">产品下载</a></li>
            <li><a target="_blank" href="https://j.meishi.cc/joinus.html" title="加入我们">加入我们</a></li>
            <li><a target="_blank" href="https://j.meishi.cc/contactus.html" title="联系我们">联系我们</a></li>
            <li><a target="_blank" href="https://j.meishi.cc/contactus.html" title="商务合作">商务合作</a></li>
            <li><a target="_blank" href="https://www.meishij.net/siteinfo/user_agreement.php" title="用户协议">用户协议</a></li>
            <li><a target="_blank" href="https://www.meishij.net/siteinfo/privacy.php" title="用户协议">隐私政策</a></li>
            <li><a target="_blank" href="https://www.meishij.net/siteinfo/maps.php" title="网站地图">网站地图</a></li>
            <li><a target="_blank" href="https://www.meishij.net/siteinfo/links.php" title="友情链接">友情链接</a></li>
        </ul>
        <p><a target="_blank" href="https://beian.miit.gov.cn/" class="gray_a">京ICP备14030359号-1</a>/<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802026928" class="gray_a"><img src="https://st-cn.meishij.net/p2/20180208/20180208111357_93713.png">京公网安备11010802026928</a> Copyright ? 2003-2021 MEISHIJ CO.,LTD.</p>
    </div>

</div>
</template>

<script>
export default {

}
</script>

<style scoped>
.main_footer {
    width: 100%;
    background: rgba(11,11,10,0.9);
    padding-top: 40px;
    margin-top: 40px;
}
.footer_con1 {
    width: 1200px;
    margin: 0px auto;
    height: 190px;
    font-size: 0px;
}
.logobottom {
    display: inline-block;
    vertical-align: top;
    height: 180px;
    width: 600px;
    background: url(https://st-cn.meishij.net/p2/20210312/20210312114857_208.png) left center no-repeat;
    background-size: 440px auto;
}
.logobottom a {
    height: 100%;
    width: 200px;
    display: block;
}
.qrcodes_bottom {
    height: 200px;
    width: 600px;
    display: inline-block;
    vertical-align: top;
    font-size: 0px;
}
.qrcodes_bottom .item {
    overflow: hidden;
    display: inline-block;
    vertical-align: top;
    position: relative;
    height: 80px;
    width: 280px;
    margin: 0px 0px 20px 20px;
    background: rgba(255,255,255,0.1);
    border-radius: 4px;
    position: relative;
    transition: all ease 0.3s;
}
.qrcodes_bottom .item .icon[data-v-40ab164b] {
    position: absolute;
    background: url(https://st-cn.meishij.net/p2/20210125/20210125105907_288.png) -5px 4px no-repeat;
    background-size: 50px 200px;
    width: 50px;
    height: 50px;
    left: 30px;
    top: 10px;
}
.qrcodes_bottom .item .words {
    padding-left: 100px;
    padding-top: 16px;
}
.qrcodes_bottom .item .words .t {
    font-size: 17px;
    line-height: 26px;
    color: #fff;
    font-weight: 400;
    display: block;
}
.qrcodes_bottom .item .words .des {
    font-size: 14px;
    line-height: 22px;
    color: rgba(255,255,255,0.5);
    font-weight: 400;
    display: block;
}

.qrcodes_bottom .item .qrcode {
    position: absolute;
    border-radius: 16px;
    background: rgba(255,255,255,1);
    padding: 5px;
    left: 50%;
    top: -210px;
    margin-left: -100px;
    opacity: 0;
    transition: all ease 0.5s;
    box-shadow: 0px 0px 30px rgb(0 0 0 / 20%);
}
.qrcodes_bottom .item .qrcode img {
    display: block;
    height: 190px;
    width: 190px;
}
.qrcodes_bottom .item .qrcode .arrow {
    width: 0;
    height: 0;
    border-width: 20px;
    border-style: solid;
    border-color: rgba(255,255,255,1) transparent transparent transparent;
    position: absolute;
    bottom: -30px;
    left: 50%;
    margin-left: -20px;
}
.footer_con2 {
    width: 1200px;
    margin: 0px auto;
    height: 120px;
}
.footer_con2 ul{
    padding-top: 30px;
    box-sizing: border-box;
    text-align: center;
}
.footer_con2 ul li a{
    color: #fff;
    font-weight: 600;
}
.footer_con2 ul li a:hover{
    color: #f64d36;
}
.footer_con2 ul li {
    display: inline-block;
    vertical-align: top;
    height: 30px;
    line-height: 30px;
    margin-right: 20px;
}
.footer_con2 p {
    font-size: 12px;
    color: #999;
    line-height: 30px;
    text-align: center;
}
.footer_con2 p a {
    color: #999;
}

</style>>

</style>