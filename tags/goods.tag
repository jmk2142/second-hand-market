
<goods>
  <div class="Goods">
    <div class="good" each = {goods} onclick={check}>
      <div class="price">
        <span>{price} $</span>
      </div>
      <div class="imgList" ref="imgList">
        <img src={img[0]} alt="" name={name} class="image">
      </div>
      <button type="button" name="button" onclick={add}>Add To Cart</button>
      <p class="good_name">{name}</p>
    </div>
  </div>
  <detail show={showDetail} title={itemName}>

  </detail>
  <script>
  this.goods = [
    {
      name: 'Stand Fan',
      img: ['http://res.cloudinary.com/shuaiyuan/image/upload/c_scale,h_996/v1518323224/fan1_iscosk.png', 'http://res.cloudinary.com/shuaiyuan/image/upload/v1518411744/fan2_qu4kz8.jpg'],
      description: '9月份购入，使用不到2个月后吃灰，原价50，现25。',
      price: 25
    },
    {
      name: 'Dell 4K 24-inch Monitor',
      img: ['http://res.cloudinary.com/shuaiyuan/image/upload/v1518326164/monitor2_czrnsm.png', 'http://res.cloudinary.com/shuaiyuan/image/upload/v1518411742/monitor1_bab9ex.jpg'],
      description: '目前市场上适配macbook pro 2015及以上版本最好的24寸4K显示器，我的是2015最低配Macbook Pro，流畅运行，写代码，剪视频，做设计，写论文完全无压力。使用了5个月，原价350$，现250$。',
      price: 250
    },
    {
      name: 'Chair',
      img: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3ixnHunyAIXXgbhhSLcuecH1vKoTV2si0dIEfv5SpanVm44ED'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'Humidifier',
      img: ['http://res.cloudinary.com/shuaiyuan/image/upload/v1518413539/humidifier1_vrdmkv.png','http://res.cloudinary.com/shuaiyuan/image/upload/v1518413539/humidifier3_hlgcrg.jpg','http://res.cloudinary.com/shuaiyuan/image/upload/v1518413539/humidifier2_ghsmdf.jpg'],
      description: '优质加湿器，外形优美，自带五彩跑马灯，可作装饰灯具用。',
      price: 15
    },
    {
      name: 'Electric Cooker',
      img: ['https://fthmb.tqn.com/9skPQdSauVcjuhyz59MH-cnQrMw=/2121x1414/filters:no_upscale():fill(transparent,1)/GettyImages-181957771-57f50f645f9b586c35442c69.jpg'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'ZhiYun(智云) Crane V2 DSLR Camera Stablizer',
      img: ['http://res.cloudinary.com/shuaiyuan/image/upload/v1518415624/crane1_zma4az.png', 'http://res.cloudinary.com/shuaiyuan/image/upload/v1518415624/crane2_gcx49w.jpg'],
      description: '本人勉强算半个业余摄影爱好者，主要喜好拍摄视频，稳定器设备方面国产一路领先世界。智云的单反稳定器不比大疆逊色，智云云鹤V2是微单稳定器这个级别中性能价格最好的一款。根据使用经验，只要不是长焦镜头，索尼松下等微单不在话下，也能加载佳能5D4。',
      price: 400
    },
    {
      name: 'Photography Light',
      img: ['http://via.placeholder.com/300x200'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'Water Boiler',
      img: ['http://via.placeholder.com/300x200'],
      description: 'This is a pretty fancy staff',
      price: 20
    }
  ]

  var that = this;
  var name = '';
  var src = '';
  var description = '';

  this.imgSource = 'http://via.placeholder.com/300x200';
  this.showDetail = false;
  this.itemName = "this is the title pass from goods tag";
  this.description = '';

  this.check = function() {
    // this.imgSource = e.currentTarget.firstChild.nextElementSibling.currentSrc;
    // this.itemName = e.currentTarget.childNodes[3].textContent;
    name = this.name;
    src = this.img[0];
    description = this.description;
    that.showDetail = true;
    that.itemName = name;
    that.imgSource = this.img;
    that.description = description;
    that.update();
    document.querySelector('body').classList.add('prevent-scroll')
  }

  this.closeDetail = function(e) {
    that.showDetail = false;
    document.querySelector('body').classList.remove('prevent-scroll')
    this.update();
  }

  this.add = function(event) {
    this.parent.parent.item++;
    this.parent.parent.update();
    this.parent.parent.itemList.push(event.item.name)
    event.stopPropagation()
  }

  // this.checkImageNum = function(event) {
  //   // console.log(event.item.img.length)
  //   if(event.item.img.length > 1) {
  //     console.log(event.target)
  //
  //     if(event.target.classList.contains("image")) {
  //       event.target.classList.add("move");
  //     }
  //
  //   }
  //   event.stopPropagation();
  // }

  </script>













  <style>
    :scope p {
      color: #000;
    }

    .Goods {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      text-align: right;
    }

    .good {
      margin: 10px;
      border: 1px solid #ccc;
      transition: all 0.4s;
      padding: 10px;
      border-radius: 5px;
      box-shadow: 5px 10px 20px rgba(200, 200, 200, 0.9);
      max-width: 300px;
      position: relative;
      /*prevent blinking due to the scale animation*/
      transform: translate3d(0, 0, 0);
    }

    .good img {
      width: 100%;
      transition: all .4s;
    }

    .good button {
      float: left;
      width: 100px;
      height: 30px;
      background: transparent;
      /*border-radius: 5px;*/
      border: 1px solid #222;
      position: relative;
      margin-top: 10px;
    }

    .good button:after {
      content: "";
      position: absolute;
      top: 0;
      left: -1px;
      width: inherit;
      height: 0px;
      background: #222;
      transition: all .2s;
      z-index: -100;
    }

    .good button:hover {
      color: #fff;
      cursor: pointer;
    }

    .good button:hover:after {
      height: 30px;
    }

    .good:hover {
      cursor: pointer;
      transform: scale(1.005);
      box-shadow: 5px 10px 20px rgba(100, 100, 100, 0.5);
    }
    .good_name {
      transition: all 0.3s;
      margin: 5px 0;
      margin-right: 10px;
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
      width: 170px;
      float: right;
    }
    .good:hover .good_name {
      color: rgb(12, 27, 62);
    }

    .price {
      position: absolute;
      width: 50px;
      height: 50px;
      border-radius: 10px;
      top: 20px;
      right: 20px;
      background: rgba(10, 10, 10, 0.8);
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    /*.imgList {
      overflow: hidden;
      display: flex;
    }

    .move {
      animation: moveAround 7s ease-in-out;
    }

    @keyframes moveAround {
      25% {
        margin-left: -20%;
      }

      75% {
        margin-left: -20%;
      }

      100% {
        margin-left: 0;
      }
    }*/

  </style>
</goods>
