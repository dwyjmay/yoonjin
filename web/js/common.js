function tabControl(obj){
    var target=$(obj);
    target.parent().siblings().removeClass('on');
    target.parent().addClass('on');
}
