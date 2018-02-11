riot.tag2('detail', '<div class="container" onclick="{parent.closeDetail}"> <div class="" id="detail-container"> <img riot-src="{this.parent.imgSource}" alt="" onclick="{viewImage}" border="1" id="detail-image"> <p>{this.parent.description}</p> <h2>{this.parent.itemName}</h2> </div> </div>', 'detail .container,[data-is="detail"] .container{ position: fixed; top: 0; bottom: 0; left: 0; right: 0; background: rgba(10, 10, 10, 0.9); overflow: auto; } detail .container > div,[data-is="detail"] .container > div{ display: flex; color: #fff; justify-content: space-around; align-items: center; vertical-align: top; margin-top: 15%; flex-wrap: wrap; } detail .container img,[data-is="detail"] .container img{ flex-basis: 1; width: 50%; height: auto; padding: 10px; transition: all .3s; } detail .container img:hover,[data-is="detail"] .container img:hover{ cursor: pointer; transform: scale(1.02); } detail .container p,[data-is="detail"] .container p{ flex-basis: 400px; color: #fff; text-align: center; } detail .container h2,[data-is="detail"] .container h2{ margin-top: 50px; text-align: center; flex-basis: 100%; }', '', function(opts) {
    this.viewImage = function(event) {
      window.open(event.currentTarget.src)
      event.stopPropagation();
    }
});
