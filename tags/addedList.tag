
<addedList>
  <div class="sidebar">
    <div class="stick-top">
      <div class="close" onclick={close}>
        <i class="fa fa-times"></i>
      </div>
      <button type="button" name="button" onclick= {clearList}>Clear the Cart</button>
    </div>
    <h3>Your Shopping Cart</h3>
    <ul class="list" show={this.parent.itemList.length}>
      <li each={ i in this.parent.itemList}> {i}</li>
    </ul>
    <p hide={this.parent.itemList.length} class="default-text">
      Nothing in the cart, please pick up some stuff.
    </p>
  </div>

  <script>


    this.close = function() {
      this.parent.viewList = !this.parent.viewList;
    }

    this.clearList = function() {
      this.parent.itemList = [];
      this.parent.item = 0;
      this.parent.update();
    }
  </script>

  <style>
    :scope p {
      color: #000;
    }

    .sidebar {
      position: fixed;
      height: 100%;
      width: 400px;
      background: #222;
      color: #fff;
      right: 0;
      top: 0;
      z-index: 1000;
      overflow: auto;
    }

    .stick-top {
      display: flex;
    }

    .stick-top button {
      margin-left: 65%;
      border: 1px solid #fff;
      transition: all .4s;
      background: transparent;
      color: #fff;
    }

    .stick-top button:hover {
      background: #fff;
      color: #222;
      cursor: pointer;
    }

    .close {
      font-size: 15px;
      background: transparent;
      width: 50px;
      height: 50px;
      transition: all .4s;
      display: flex;
      justify-content: center;
      align-items: center;
      transition: all .4s;
    }

    .close:hover {
      cursor: pointer;
      background: #fff;
    }

    .close:hover.close i {
      color: #222;
    }

    .close i {
      color: #fff;
      font-size: 20px;
    }

    .list {
      color: #fff;
    }

    .list ul {
      padding: 0;
    }

    .list li {
      padding-left: 20px;
      list-style: none;
      padding: 20px 0;
    }

    h3, p {
      color: #fff;
      padding-left: 20px;
    }

    .default-text {
      color: #aaa;
    }

  </style>
</addedList>
