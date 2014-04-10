
module.exports = {
	"get /hello": function (req, res) {
		/**
		 * Say hello page
		 * @author fed
		 */
		this.render.ftl("hello", {
			name: "world  "
		});
	},
	"get /": function(req, res) {
		/**
		 * test override in freemarker
		 */
		this.render.ftl("index");
	},
	"get /getData":function(req, res){

		if(req.query.type == 1){
			this.render.json({
				data:"进入内圈",
				msg:"success",
				code:1,
			});
		}else{
			this.render.json({
				cur:"goods1212"
			})
		}
		
	},
	"get /getAllData" : function(req, res){
		this.render.json({
				wrap: [{
					name: '呵呵1',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈2',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '进入内圈',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈4',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈5',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}, {
					name: '哈哈哈6',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				},{
					name: '哈哈哈7',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				},{
					name: '哈哈哈8',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}],
				inner: [{
					name: 'goods1',
					src: 'http://images.daoju.changyou.com/imgs/99/cd/ff80808141a1cb280141ab680a1600e9.png'
				}]
			});
	},
	"get /getLuckyList" : function(req,res){
		this.render.json({
			data:[
				
			]
		})
	}


};