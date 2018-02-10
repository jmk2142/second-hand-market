
riot.tag2('addedlist', '<div class="sidebar"> <div class="close" onclick="{close}"> <i class="fa fa-times"></i> </div> <ul class="list"> <li each="{i in this.parent.itemList}"> {i}</li> </ul> </div>', 'addedlist p,[data-is="addedlist"] p{ color: #000; } addedlist .sidebar,[data-is="addedlist"] .sidebar{ position: fixed; height: 100%; width: 400px; background: #222; color: #fff; right: 0; top: 0; z-index: 1000; overflow: auto; } addedlist .close,[data-is="addedlist"] .close{ font-size: 15px; background: transparent; width: 50px; height: 50px; transition: all .4s; display: flex; justify-content: center; align-items: center; transition: all .4s; } addedlist .close:hover,[data-is="addedlist"] .close:hover{ cursor: pointer; background: #fff; } addedlist .close:hover.close i,[data-is="addedlist"] .close:hover.close i{ color: #222; } addedlist .close i,[data-is="addedlist"] .close i{ color: #fff; font-size: 20px; } addedlist .list,[data-is="addedlist"] .list{ color: #fff; } addedlist .list ul,[data-is="addedlist"] .list ul{ padding: 0; } addedlist .list li,[data-is="addedlist"] .list li{ padding-left: 20px; list-style: none; padding: 20px 0; }', '', function(opts) {


    this.close = function() {
      this.parent.viewList = !this.parent.viewList;
    }
});
