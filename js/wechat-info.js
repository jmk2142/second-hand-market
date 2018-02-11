
riot.tag2('wechat-info', '<img src="../img/wechat-info.jpg" alt="wechat-img" class="wechat-img wechat-zoom" onclick="{checkWechat}">', 'wechat-info p,[data-is="wechat-info"] p{ color: #000; } wechat-info .wechat-img,[data-is="wechat-info"] .wechat-img{ position: fixed; top: 0; bottom: 0; left: 0; margin: auto; width: 6%; border: 5px solid #222; transition: all .4s; border-radius: 10px; } wechat-info .wechat-img:hover,[data-is="wechat-info"] .wechat-img:hover{ cursor: pointer; } wechat-info .wechat-zoom:hover,[data-is="wechat-info"] .wechat-zoom:hover{ transform: scale(1.1) translateX(5px); transform-origin: left; } wechat-info .middle,[data-is="wechat-info"] .middle{ right: 0; width: 25%; border: 20px solid #222; }', '', function(opts) {
    this.checkWechat = function(event) {
      event.target.classList.toggle("middle");
      event.target.classList.toggle("wechat-zoom");
    }
});
