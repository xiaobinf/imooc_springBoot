
<style type="text/css">
    #active1{
        color:black;
    }
</style>
<style>
    #p_active2{  display: none;  }
    #p_active3{  display: none;  }
    #p_active4{  display: none;  }
    #p_active5{  display: none;  }
    #p_active6{  display: none;  }
    #p_active7{  display: none;  }
</style>

<#include  "../base/header.ftl" >
<div class="content">
    <div class="profile_main">
       <div class="profile_person"  >
           <div class="personal_image">
              <img src="img/personal-info.png" class="avatar img-circle" />
           </div>
           <div class="person_name"><!-- 昵称 -->
                   Hello,&nbspBitch
           </div>
           <div class="person_sign"><!-- 签名 -->
                   Come here and I will kick your ass!
           </div>
       </div>
        <div class="profile_info">
            <div class="learn_time">
                   <span class="learntime_static">学习时间</span>
                   <span class="learntime_dynamic">0h</span>
            </div>
            <div class="relevent_info">
                <div class="table">
                    <div class="tr">
                        <div class="td">
                            <span class="rf_static">经验</span><span class="rf_dynamic">0</span>
                        </div>
                        <div class="td">
                            <span class="rf_static">积分</span><span class="rf_dynamic">0</span>
                        </div>
                    </div >
                    <div class="tr">
                        <div class="td">
                            <span class="rf_static">关注</span><span class="rf_dynamic">0</span>
                        </div>
                        <div class="td">
                            <span class="rf_static">粉丝</span><span class="rf_dynamic">0</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modify_btn">
                <div class="btn_position">
                    <a href="#"><div class="modify" onclick="popBox()">修改资料</div></a>
                </div>
            </div>
        </div>
    </div>

</div>

<div id="popLayer" >
</div>
<div id="popBox">
    <div class="popBox_sub">
    </div>
    <div class="close_img">
        <a href="javascript:void(0)" onclick="closeBox()">
            <img src="img/multiply.png" width="40px">
        </a>
    </div>
    <div class="modify_contain">
        <div class="modify_title">
            <div class="mt_char">
                Modify
            </div>
        </div>
        <div class="modify_position">
            <div class="modify_a">
                <div class="m_char">名称</div>
                <div class="m_txt"><input type="text" class="m_input" style="height: 25px"/></div>
            </div>
            <div class="modify_a">
                <div class="m_char">邮件</div>
                <div class="m_txt"><input type="text" class="m_input" style="height: 25px"/></div>
            </div>
            <div class="modify_a">
                <div class="m_char">城市</div>
                <div class="m_txt"><input type="text" class="m_input" style="height: 25px"/></div>
            </div>
            <div class="modify_a">
                <div class="m_char">职位</div>
                <div class="m_txt"><input type="text" class="m_input" style="height: 25px"/></div>
            </div>
            <div class="modify_a">
                <div class="m_char">签名</div>
                <div class="m_txt"><input type="text" class="m_input" style="height: 25px"/></div>
            </div>
        </div>
    </div>
</div>


<!-- scripts -->
<script src="js/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui-1.10.2.custom.min.js"></script>
<!-- knob -->
<script src="js/jquery.knob.js"></script>
<!-- flot charts -->
<script src="js/jquery.flot.js"></script>
<script src="js/jquery.flot.stack.js"></script>
<script src="js/jquery.flot.resize.js"></script>
<script src="js/theme.js"></script>

<script type="text/javascript">
    function popBox(){
        var popBox = document.getElementById('popBox');
        var popLayer = document.getElementById('popLayer');

        popLayer.style.width = document.body.scrollWidth + "px";
        popLayer.style.height = document.body.scrollHeight + "px";

        popLayer.style.display = "block";
        popBox.style.display = "block";
    }//end func popBox()

    function closeBox(){
        var popBox = document.getElementById('popBox');
        var popLayer = document.getElementById('popLayer');

        popLayer.style.display = "none";
        popBox.style.display = "none";

    }//end func closeBox()

</script>

<script type="text/javascript">
    $(function () {

        // jQuery Knobs
        $(".knob").knob();



        // jQuery UI Sliders
        $(".slider-sample1").slider({
            value: 100,
            min: 1,
            max: 500
        });
        $(".slider-sample2").slider({
            range: "min",
            value: 130,
            min: 1,
            max: 500
        });
        $(".slider-sample3").slider({
            range: true,
            min: 0,
            max: 500,
            values: [ 40, 170 ],
        });



        // jQuery Flot Chart
        var visits = [[1, 50], [2, 40], [3, 45], [4, 23],[5, 55],[6, 65],[7, 61],[8, 70],[9, 65],[10, 75],[11, 57],[12, 59]];
        var visitors = [[1, 25], [2, 50], [3, 23], [4, 48],[5, 38],[6, 40],[7, 47],[8, 55],[9, 43],[10,50],[11,47],[12, 39]];

        var plot = $.plot($("#statsChart"),
                [ { data: visits, label: "Signups"},
                    { data: visitors, label: "Visits" }], {
                    series: {
                        lines: { show: true,
                            lineWidth: 1,
                            fill: true,
                            fillColor: { colors: [ { opacity: 0.1 }, { opacity: 0.13 } ] }
                        },
                        points: { show: true,
                            lineWidth: 2,
                            radius: 3
                        },
                        shadowSize: 0,
                        stack: true
                    },
                    grid: { hoverable: true,
                        clickable: true,
                        tickColor: "#f9f9f9",
                        borderWidth: 0
                    },
                    legend: {
                        // show: false
                        labelBoxBorderColor: "#fff"
                    },
                    colors: ["#a7b5c5", "#30a0eb"],
                    xaxis: {
                        ticks: [[1, "JAN"], [2, "FEB"], [3, "MAR"], [4,"APR"], [5,"MAY"], [6,"JUN"],
                            [7,"JUL"], [8,"AUG"], [9,"SEP"], [10,"OCT"], [11,"NOV"], [12,"DEC"]],
                        font: {
                            size: 12,
                            family: "Open Sans, Arial",
                            variant: "small-caps",
                            color: "#697695"
                        }
                    },
                    yaxis: {
                        ticks:3,
                        tickDecimals: 0,
                        font: {size:12, color: "#9da3a9"}
                    }
                });

        function showTooltip(x, y, contents) {
            $('<div id="tooltip">' + contents + '</div>').css( {
                position: 'absolute',
                display: 'none',
                top: y - 30,
                left: x - 50,
                color: "#fff",
                padding: '2px 5px',
                'border-radius': '6px',
                'background-color': '#000',
                opacity: 0.80
            }).appendTo("body").fadeIn(200);
        }

        var previousPoint = null;
        $("#statsChart").bind("plothover", function (event, pos, item) {
            if (item) {
                if (previousPoint != item.dataIndex) {
                    previousPoint = item.dataIndex;

                    $("#tooltip").remove();
                    var x = item.datapoint[0].toFixed(0),
                            y = item.datapoint[1].toFixed(0);

                    var month = item.series.xaxis.ticks[item.dataIndex].label;

                    showTooltip(item.pageX, item.pageY,
                            item.series.label + " of " + month + ": " + y);
                }
            }
            else {
                $("#tooltip").remove();
                previousPoint = null;
            }
        });
    });
</script>

</body>
</html>