<detail>

    <div class='container' onclick={parent.closeDetail}>
      <h2>{this.parent.itemName}</h2>
      <div class="detail-container" id="detail-container">
        <div class="detail-images">
          <img src={i} alt="" style="border-color: white" border="1" onclick={viewImage} id="detail-image" each = {i in this.parent.imgSource}>
        </div>
        <p id="detail-description">{this.parent.description}</p>
      </div>
    </div>

  <script>
    this.viewImage = function(event) {
      window.open(event.currentTarget.src)
      event.stopPropagation();
    }
  </script>

  <style scoped>
    .container {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      background: rgba(10, 10, 10, 0.9);
      overflow: auto;
      /*padding: 0 5%;*/
      padding-top: 5%;
    }

    /*the best way of styling detail layer*/

    .container h2 {
      color: #fff;
      text-align: center;
      font-weight: 500;
      font-family: 'Gotham SSm', sans-serif;
      line-height: 1.375em;
      letter-spacing: .1875em;
    }

    .detail-container {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
    }

    .detail-images {
      display: flex;
      flex-direction: column;
      align-items: center;
      max-width: 500px;
    }

    .container img {
        width: 90%;
        padding: 10px;
        transition: all .3s;
        margin: 10px 0;
    }

    .container img:hover {
      cursor: pointer;
      transform: scale(1.02);
    }

    .detail-container p {
      color: #fff;
      text-align: left;
      max-width: 400px;
      font-family: 'Gotham SSm', sans-serif;
      font-size: 13px;
      line-height: 2em;
    }


    /*the first way of stying detail layer*/


    /*.container h3 {
      color: #fff;
      text-align: center;
      position: absolute;
      top: 85%;
      bottom: 0;
      left: 0;
      right: 0;
      margin: auto;
    }

    .container img {
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 30%;
      margin: auto;
      width: 50%;
      height: auto;
    }

    .container p {
      color: #fff;
      position: absolute;
      top: 30%;
      right: 20%;
    }*/

  /*the second way of stying detail layer*/

    /*.container > div {
      display: flex;
      color: #fff;
      justify-content: space-around;
      align-items: center;
      vertical-align: top;
      margin-top: 15%;
      flex-wrap: wrap;
    }

    .container img {
      flex-basis: 1;
      width: 50%;
      height: auto;
      padding: 10px;
      transition: all .3s;
    }

    .container img:hover {
      cursor: pointer;
      transform: scale(1.02);
    }

    .container p {
      flex-basis: 400px;
      color: #fff;
      text-align: center;
    }

    .container h2 {
      margin-top: 50px;
      text-align: center;
      flex-basis: 100%;
    }*/



  </style>

</detail>
