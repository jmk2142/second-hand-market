
riot.tag2('goods', '<div class="Goods"> <div class="good" each="{goods}" onclick="{check}"> <img riot-src="{img}" alt="" name="{name}"> <p class="good_name">{name}</p> </div> </div> <detail show="{showDetail}" title="{itemName}"> <img riot-src="{this.parent.imgSource}" alt=""> <p>{this.parent.description}</p> <h3>{this.parent.itemName}</h3> </detail>', 'goods p,[data-is="goods"] p{ color: #000; } goods .Goods,[data-is="goods"] .Goods{ display: flex; flex-wrap: wrap; justify-content: center; text-align: right; } goods .good,[data-is="goods"] .good{ margin: 10px; border: 1px solid #ccc; transition: all 0.4s; padding: 10px; border-radius: 5px; box-shadow: 5px 10px 20px rgba(200, 200, 200, 0.5); max-width: 300px; } goods .good img,[data-is="goods"] .good img{ width: 100%; } goods .good:hover,[data-is="goods"] .good:hover{ cursor: pointer; transform: scale(1.01); box-shadow: 5px 10px 20px rgba(100, 100, 100, 0.5); } goods .good_name,[data-is="goods"] .good_name{ transition: all 0.3s; margin-right: 10px; } goods .good:hover .good_name,[data-is="goods"] .good:hover .good_name{ color: rgb(12, 27, 62); }', '', function(opts) {
  this.goods = [
    {
      name: 'Fans',
      img: 'data:image/jpeg;base64,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',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Humidifier',
      img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpwB1sD_-U6w66493b2mejXM-f3Uw8lvlxypWuKlNHZEh2-1AB',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Chair',
      img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3ixnHunyAIXXgbhhSLcuecH1vKoTV2si0dIEfv5SpanVm44ED',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Water Boiler',
      img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQf4lyT8-_5La97M--4hRGH6fIPwk31C2crnQA9LnjMVz5_8fAB',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Electric Cooker',
      img: 'https://fthmb.tqn.com/9skPQdSauVcjuhyz59MH-cnQrMw=/2121x1414/filters:no_upscale():fill(transparent,1)/GettyImages-181957771-57f50f645f9b586c35442c69.jpg',
      description: 'This is a pretty fancy staff'
    },
    {
      name: '4K Monitor',
      img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAbu0UfroRp9JQIFT4vQ8e6V6YKSHGSXJuScsb62HGHTPB5SR9Qw',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Photography Light',
      img: 'http://via.placeholder.com/300x200',
      description: 'This is a pretty fancy staff'
    },
    {
      name: 'Water Boiler',
      img: 'http://via.placeholder.com/300x200',
      description: 'This is a pretty fancy staff'
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

    name = this.name;
    src = this.img;
    description = this.description;
  }

  this.closeDetail = function(e) {
    that.showDetail = false;
    this.update();
  }

  this.on('update', function(e) {
    this.showDetail = true;
    this.itemName = name;
    this.imgSource = src;
    this.description = description;
  })

});
