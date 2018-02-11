<detail>

    <div class='container' onclick={parent.closeDetail}>
      <div class="">
        <yield/>
      </div>
    </div>

  <script>
    
  </script>

  <style scoped>
    .container {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      background: rgba(10, 10, 10, 0.8);
    }

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

    .container > div {
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
    }

    .container p {
      flex-basis: 400px;
      color: #fff;
      text-align: center;
    }

    .container h3 {
      margin-top: 50px;
      text-align: center;
      flex-basis: 100%;
    }



  </style>

</detail>
