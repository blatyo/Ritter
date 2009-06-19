Event.observe(window, 'load', function(){
   var new_writ = $('writ_writ');
   if(new_writ){
       writs.add.track_count();
       new_writ.observe('keypress', writs.add.track_count);
       new_writ.observe('keydown', writs.add.track_count);
       new_writ.observe('keyup', writs.add.track_count);
       new_writ.observe('blur', writs.add.track_count);
       new_writ.observe('focus', writs.add.track_count);
   }
});

var writs = {};
writs.add = {};
writs.add.track_count = function(){
    var MAX = 249;
    var length = $('writ_writ').value.length;
    var amount_left = MAX - length;
    $('count').update(amount_left);
    if(amount_left < 0 || length == 0){
        $('submit_writ').disable();
    } else {
        $('submit_writ').enable();
    }
}
