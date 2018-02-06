
<home>
  <nav>
    <h1>Take Anything You Want</h1>
    <div class="shopping-cart">
      <i class="fa fa-shopping-cart" aria-hidden="true"></i>
      <div id="shop-number">{ item }</div>
    </div>
  </nav>
  <div class="content">
    <goods></goods>

  </div>


  <script>
    this.item = 1;

  </script>

  <style>
    :scope
    nav {
      padding: 10px 0;
      text-align: center;
      transition: all 1s;
    }

    nav h1, nav div {
      display: inline-block;
    }

    nav div {
      float: right;
      line-height: 28px;
      position: relative;
      margin-right: 20px;
      margin-top: 10px;
    }

    nav div .fa-shopping-cart {
      font-size: 1.5em;
      line-height: 28px;
    }

    #shop-number {
      background: #222;
      color: #fff;
      border-radius: 50%;
      position: absolute;
      width: 20px;
      height: 20px;
      line-height: 20px;
      font-size: 8px;
      border: 1px solid #fff;
      top: -19px;
      right: -34px;
    }

    .nav-follow {
      border-bottom: 1px solid #ccc;
      background: rgba(50, 50, 50, 0.82);
      color: #fff;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 100;

    }


    .content-backup {
      padding-top: 87.81px;
    }

    .shopping-cart:hover {
      transition: .3s;
    }

    .shopping-cart:hover {
      cursor: pointer;
      transform: scale(1.15);
    }
  </style>
</home>
