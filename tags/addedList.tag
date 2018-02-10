
<addedList>
  <div class="sidebar">
    <div class="close" onclick={close}>
      <i class="fa fa-times"></i>
    </div>
    <ul class="list">
      <li each={ i in this.parent.itemList}> {i}</li>
    </ul>
  </div>

  <script>


    this.close = function() {
      this.parent.viewList = !this.parent.viewList;
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
  </style>
</addedList>
