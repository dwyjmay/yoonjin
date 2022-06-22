/* 전체 동의 체크 */
window.uiUtil = {
    chkAll : function chkAll(all, chks){
        var $chkAll = $(all);
        var $chkOther = $(chks);
        $chkAll.change(function(){
            var chkAllState = $(this).prop("checked");
            $chkOther.prop("checked", chkAllState).change();
            if(chkAllState){
                $chkOther.parent().addClass("on");
            } else {
                $chkOther.parent().removeClass("on");
            }
        });
        $chkOther.change(function(){
            var chkVal = true;
            var allCheckState = true;
            $chkOther.each(function(){
                if(!$(this).prop("checked")){
                    chkVal = false;
                }
            });
            $chkOther.not(this).each(function(){
                if(!$(this).prop("checked")){
                    allCheckState = false;
                }
            });
            $chkAll.prop("checked", chkVal);
            if(chkVal) {
                $chkAll.parent().addClass("on");
            } else {
                $chkAll.parent().removeClass("on");
                if(allCheckState) {
                    $chkOther.prop("checked", true);
                    $chkOther.parent().removeClass("on");
                    $(this).prop("checked", false);
                    $(this).parent().addClass("on");
                }
            }
        });
    }

}

/*
 $("#chkAll").click(function() {
                if($("#chkAll").is(":checked")) $("input[name=receive]").prop("checked", true);
                else $("input[name=receive]").prop("checked", false);
            });
            $("input[name=receive]").click(function() {
                var total = $("input[name=receive]").length;
                var checked = $("input[name=receive]:checked").length;

                if(total != checked) $("#chkAll").prop("checked", false);
                else $("#chkAll").prop("checked", true);
            });
* */