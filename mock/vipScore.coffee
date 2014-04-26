dataIndex = {
    adImg: "image/tmp/ad_top.jpg"

    user: {
        name: "admin@changyou.com"
        photo: "image/tmp/user_photo.jpg"
        levelName: "神将"
        nextLevel: "天罡会员"
        score: "88888"
        status: 1 # 0普通会员 1vip会员
    }
    recommendGoods: [
        {
            id: 1
            name: "完美钻石"
            img: "image/tmp/good-1.png"
            activePrice: 8888
            score: 200
            discount: 3
            sourcePrice: 10000
            buyNumber: 10
            stock: 9999
            timmer: 10000
        }
    ]
    goodList: [
        {
            id: 1
            name: "完美钻石"
            img: "image/tmp/good-1.png"
            activePrice: 8888
            score: 200
            discount: 3
            sourcePrice: 10000
            buyNumber: 10
            stock: 9999
        }
        {
            id: 2
            name: "完美钻石"
            img: "image/tmp/good-2.png"
            activePrice: 8888
            score: 200
            discount: 3
            sourcePrice: 10000
            buyNumber: 10
            stock: 9999
        }
        {
            id: 3
            name: "完美钻石"
            img: "image/tmp/good-3.png"
            activePrice: 8888
            score: 200
            discount: 3
            sourcePrice: 10000
            buyNumber: 10
            stock: 9999
        }
        {
            id: 4
            name: "完美钻石"
            img: "image/tmp/good-4.png"
            activePrice: 8888
            score: 200
            discount: 3
            sourcePrice: 10000
            buyNumber: 10
            stock: 9999
        }
    ]
    sortList: [
        {
            id: 1
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 2
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 3
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 4
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 5
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 6
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
        {
            id: 7
            name: "商品商品"
            img: "image/tmp/good-1.png"
            num: 1660
        }
    ]
    activeAd: [
        {
            img: "image/tmp/ad-1.jpg"
            url: "/index/active1"
        }
        {
            img: "image/tmp/ad-2.jpg"
            url: "/index/active2"
        }
        {
            img: "image/tmp/ad-3.png"
            url: "/index/active3"
        }
        {
            img: "image/tmp/ad-4.png"
            url: "/index/active3"
        }
    ]

    noticeList: [
        {
            context: "最新公告：小剑同学，加油加油，好好工作哦！~"
            url: "http://active2"
        }
    ]
}
module.exports = {
    "get /": (req, res) ->
        this.render.ftl "dbActive"
        
    "get /init": (req, res) ->
        this.render.json dataIndex
}
