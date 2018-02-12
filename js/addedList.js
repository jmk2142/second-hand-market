
riot.tag2('addedlist', '<div class="sidebar"> <div class="stick-top"> <div class="close" onclick="{close}"> <i class="fa fa-times"></i> </div> <button type="button" name="button" onclick="{clearList}">Clear the Cart</button> </div> <h3>Your Shopping Cart</h3> <ul class="list" show="{this.parent.itemList.length}"> <li each="{i in this.parent.itemList}"> {i}</li> </ul> <p hide="{this.parent.itemList.length}" class="default-text"> Nothing in the cart, please pick up some stuff. </p> </div>', 'addedlist p,[data-is="addedlist"] p{ color: #000; } addedlist .sidebar,[data-is="addedlist"] .sidebar{ position: fixed; height: 100%; width: 400px; background: #222; color: #fff; right: 0; top: 0; z-index: 1000; overflow: auto; } addedlist .stick-top,[data-is="addedlist"] .stick-top{ display: flex; } addedlist .stick-top button,[data-is="addedlist"] .stick-top button{ margin-left: 65%; border: 1px solid #fff; transition: all .4s; background: transparent; color: #fff; } addedlist .stick-top button:hover,[data-is="addedlist"] .stick-top button:hover{ background: #fff; color: #222; cursor: pointer; } addedlist .close,[data-is="addedlist"] .close{ font-size: 15px; background: transparent; width: 50px; height: 50px; transition: all .4s; display: flex; justify-content: center; align-items: center; transition: all .4s; } addedlist .close:hover,[data-is="addedlist"] .close:hover{ cursor: pointer; background: #fff; } addedlist .close:hover.close i,[data-is="addedlist"] .close:hover.close i{ color: #222; } addedlist .close i,[data-is="addedlist"] .close i{ color: #fff; font-size: 20px; } addedlist .list,[data-is="addedlist"] .list{ color: #fff; } addedlist .list ul,[data-is="addedlist"] .list ul{ padding: 0; } addedlist .list li,[data-is="addedlist"] .list li{ padding-left: 20px; list-style: none; padding: 20px 0; } addedlist h3,[data-is="addedlist"] h3,addedlist p,[data-is="addedlist"] p{ color: #fff; padding-left: 20px; } addedlist .default-text,[data-is="addedlist"] .default-text{ color: #aaa; }', '', function(opts) {


    this.close = function() {
      this.parent.viewList = !this.parent.viewList;
    }

    this.clearList = function() {
      this.parent.itemList = [];
      this.parent.item = 0;
      this.parent.update();
    }
});
