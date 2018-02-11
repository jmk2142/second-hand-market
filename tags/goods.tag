
<goods>
  <div class="Goods">
    <div class="good" each = {goods} onclick={check}>
      <div class="price">
        <span>{price} $</span>
      </div>
      <div class="imgList" ref="imgList">
        <img src={i} alt="" name={name} each = {i in img} class="image">
      </div>
      <button type="button" name="button" onclick={add}>加入购物车</button>
      <p class="good_name">{name}</p>
    </div>
  </div>
  <detail show={showDetail} title={itemName}>
    <img src={this.parent.imgSource} alt="">
    <p>{this.parent.description}</p>
    <h3>{this.parent.itemName}</h3>
  </detail>
  <script>
  this.goods = [
    {
      name: '风扇',
      img: ['http://res.cloudinary.com/shuaiyuan/image/upload/c_scale,h_996/v1518323224/fan1_iscosk.png'],
      description: '9月份购入，使用不到2个月后吃灰，原价50，现25。',
      price: 20
    },
    {
      name: 'Humidifier',
      img: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpwB1sD_-U6w66493b2mejXM-f3Uw8lvlxypWuKlNHZEh2-1AB'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'Chair',
      img: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3ixnHunyAIXXgbhhSLcuecH1vKoTV2si0dIEfv5SpanVm44ED'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'Water Boiler',
      img: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf4lyT8-_5La97M--4hRGH6fIPwk31C2crnQA9LnjMVz5_8fAB'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: 'Electric Cooker',
      img: ['https://fthmb.tqn.com/9skPQdSauVcjuhyz59MH-cnQrMw=/2121x1414/filters:no_upscale():fill(transparent,1)/GettyImages-181957771-57f50f645f9b586c35442c69.jpg'],
      description: 'This is a pretty fancy staff',
      price: 20
    },
    {
      name: '4K Monitor',
      img: ['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAbu0UfroRp9JQIFT4vQ8e6V6YKSHGSXJuScsb62HGHTPB5SR9Qw'],
      description: 'This is a pretty fancy staff',
      price: 20
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
    that.imgSource = src;
    that.description = description;
    that.update();
  }

  this.closeDetail = function(e) {
    that.showDetail = false;
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
      left: 0;
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
      transform: scale(1.01);
      box-shadow: 5px 10px 20px rgba(100, 100, 100, 0.5);
    }
    .good_name {
      transition: all 0.3s;
      margin: 5px 0;
      margin-right: 10px;
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
