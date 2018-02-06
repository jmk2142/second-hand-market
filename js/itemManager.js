var itemManager = riot.observable();
var item = 0;

itemManager.on("check", function() {
  return item;
})

itemManager.on("add", function() {
  item++;
})
