
<wechat-info>
      <img src="http://res.cloudinary.com/shuaiyuan/image/upload/v1518323226/wechat-info_qmimfc.jpg" alt="wechat-img" class="wechat-img wechat-zoom" onclick={checkWechat}>
  <script>
    this.checkWechat = function(event) {
      event.target.classList.toggle("middle");
      event.target.classList.toggle("wechat-zoom");
    }
  </script>

  <style>
    :scope p {
      color: #000;
    }

    .wechat-img {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      margin: auto;
      width: 6%;
      border: 5px solid #222;
      transition: all .4s;
      border-radius: 10px;
    }

    .wechat-img:hover {
      cursor: pointer;
    }

    .wechat-zoom:hover {
      transform: scale(1.1) translateX(5px);
      transform-origin: left;
    }

    .middle {
      right: 0;
      width: 25%;
      border: 20px solid #222;
    }
  </style>
</wechat-info>
