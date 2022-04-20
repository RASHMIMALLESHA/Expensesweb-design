jQuery(document).ready(
    function() {

        var heights = $(".wellheight .well").map(function() {
            return $(this).height();
        }).get();

        maxHeight = Math.max.apply(null, heights);
        $(".wellheight .well").height(maxHeight);

        var height1 = $(".wellheight1 .well").map(function() {
            return $(this).height();
        }).get();

        maxHeight1 = Math.max.apply(null, height1);
        $(".wellheight1 .well").height(maxHeight1);

        var height2 = $(".wellheight2 .well").map(function() {
            return $(this).height();
        }).get();

        maxHeight2 = Math.max.apply(null, height2);
        $(".wellheight2 .well").height(maxHeight2);

        var height3 = $(".wellheight3 .well").map(function() {
            return $(this).height();
        }).get();

        maxHeight3 = Math.max.apply(null, height3);
        $(".wellheight3 .well").height(maxHeight3);

        var height4 = $(".wellheight4 ").map(function() {
            return $(this).height();
        }).get();

        maxHeight4 = Math.max.apply(null, height4);
        $(".wellheight4 ").height(maxHeight4);

        var height5 = $(".discountHeight ").map(function() {
            return $(this).height();
        }).get();

        maxHeight5 = Math.max.apply(null, height5);
        $(".discountHeight ").height(maxHeight5);

        var height6 = $(".topReasonHeight ").map(function() {
            return $(this).height();
        }).get();

        maxHeight6 = Math.max.apply(null, height6);
        $(".topReasonHeight ").height(maxHeight6);

        var height7 = $(".refundwelltextHeight ").map(function() {
            return $(this).height();
        }).get();

        maxHeight7 = Math.max.apply(null, height7);
        $(".refundwelltextHeight ").height(maxHeight7);

        $("#StockSearchText").on(
            "keyup",
            function() {
                var value = $(this).val().toLowerCase();
                $("#stockTable tbody tr").filter(
                    function() {
                        $(this).toggle(
                            $(this).text().toLowerCase()
                            .indexOf(value) > -1)
                    });

            });

        var d = new Date();
        var month = new Array();
        month[0] = "Jan";
        month[1] = "Feb";
        month[2] = "Mar";
        month[3] = "Apr";
        month[4] = "May";
        month[5] = "Jun";
        month[6] = "Jul";
        month[7] = "Aug";
        month[8] = "Sep";
        month[9] = "Oct";
        month[10] = "Nov";
        month[11] = "Dec";

        $('input[type=radio][name=reportDateRadio]')
            .change(
                function() {

                    if (this.value == 'today') {
                        var date = d.getDate();
                        var months = month[d.getMonth()];
                        var year = d.getFullYear();

                        var fromDateTime = d.getDate() + " " +
                            months + " " + year + "::" +
                            "12:01 AM";
                        var toDateTime = d.getDate() + " " + months +
                            " " + year + "::" + "11:59 PM";

                        getDashboardReport(fromDateTime,
                            toDateTime, "today");
                    } else if (this.value == 'week') {

                        // day = d.getDate() - d.getDay();

                        var firstday = new Date(d.setDate(d
                            .getDate() -
                            d.getDay()));
                        // var lastday = new
                        // Date(d.setDate(d
                        // .getDate()
                        // - d.getDay() + 6));

                        var fromDateMonth = month[firstday
                            .getMonth()];
                        var fromDateYear = firstday.getFullYear();
                        var fromDate = firstday.getDate();

                        // var toDateMonth = month[lastday
                        // .getMonth()];
                        // var toDateYear = lastday
                        // .getFullYear();
                        // var toDate = lastday.getDate();
                        var currentDate = new Date();
                        var months = month[currentDate.getMonth()];
                        var year = currentDate.getFullYear();
                        var date = currentDate.getDate();

                        var fromDateTime = fromDate + " " +
                            fromDateMonth + " " +
                            fromDateYear + "::" + "12:01 AM";
                        var toDateTime = date + " " + months + " " +
                            year + "::" + "11:59 PM";

                        getDashboardReport(fromDateTime,
                            toDateTime, "week");

                    } else if (this.value == 'month') {
                        var months = month[d.getMonth()];
                        var date = d.getDate();
                        var year = d.getFullYear();

                        var fromDateTime = "01 " + months + " " +
                            year + "::" + "12:01 AM";
                        var toDateTime = d.getDate() + " " + months +
                            " " + year + "::" + "11:59 PM";

                        getDashboardReport(fromDateTime,
                            toDateTime, "month");

                    } else if (this.value == 'year') {
                        var months = month[d.getMonth()];
                        var date = d.getDate();
                        var year = d.getFullYear();

                        var fromDateTime = "01 Jan" + " " + year +
                            "::" + "12:01 AM";
                        var toDateTime = d.getDate() + " " + months +
                            " " + year + "::" + "11:59 PM";

                        getDashboardReport(fromDateTime,
                            toDateTime, "year");

                    } else if (this.value == 'Alltime') {

                        var months = month[d.getMonth()];
                        var date = d.getDate();
                        var year = d.getFullYear();

                        var fromDateTime = "01 Jan 2014" + "::" +
                            "12:01 AM";
                        var toDateTime = d.getDate() + " " + months +
                            " " + year + "::" + "11:59 PM";
                        getDashboardReport(fromDateTime,
                            toDateTime, "allTime");
                    } else {
                        $('#dateModal').modal('toggle');
                        $('#CustomModal').modal('toggle');
                    }
                });

    });
