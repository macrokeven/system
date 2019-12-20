package com.letoy.path;

public class pathConf {
    public static String getCss(int a){
        String level = "" ;
        for(int i=0;i<a;i++){
            level=level + "../";
        }
        String cssPath = "<link rel='stylesheet' href='"+level+"static/css/bootstrap.min.css'/>" +
                "<link rel='stylesheet' href='"+level+"static/css/bootstrap-responsive.min.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/colorpicker.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/datepicker.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/uniform.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/select2.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/matrix-style.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/matrix-media.css' />"+
                "<link rel='stylesheet' href='"+level+"static/css/bootstrap-wysihtml5.css' />"+
                "<link href='"+level+"static/font-awesome/css/font-awesome.css' rel='stylesheet' />"+
                "<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>"
                ;
        return cssPath;
    }

    public static String getJs(int a){
        String level = "" ;
        for(int i=0;i<a;i++){
            level=level + "../";
        }
        String jsPath =
                "<script src='"+level+"static/js/excanvas.min.js'></script>"+
                "<script src='"+level+"static/js/jquery.min.js'></script>"+
                "<script src='"+level+"static/js/jquery.ui.custom.js'></script>"+
                "<script src='"+level+"static/js/bootstrap.min.js'></script>"+
                "<script src='"+level+"static/js/jquery.flot.min.js'></script>"+
                "<script src='"+level+"static/js/jquery.flot.resize.min.js'></script>"+
                "<script src='"+level+"static/js/jquery.peity.min.js'></script>"+
                "<script src='"+level+"static/js/fullcalendar.min.js'></script>"+
                "<script src='"+level+"static/js/matrix.js'></script>"+
                "<script src='"+level+"static/js/matrix.dashboard.js'></script>"+
                "<script src='"+level+"static/js/jquery.gritter.min.js'></script>"+
                "<script src='"+level+"static/js/matrix.interface.js'></script>"+
                "<script src='"+level+"static/js/matrix.chat.js'></script>"+
                "<script src='"+level+"static/js/jquery.validate.js'></script>"+
                "<script src='"+level+"static/js/matrix.form_validation.js'></script>"+
                "<script src='"+level+"static/js/jquery.wizard.js'></script>"+
                "<script src='"+level+"static/js/jquery.uniform.js'></script>"+
                "<script src='"+level+"static/js/select2.min.js'></script>"+
                "<script src='"+level+"static/js/matrix.popover.js'></script>"+
                "<script src='"+level+"static/js/jquery.dataTables.min.js'></script>"+
                "<script src='"+level+"static/js/matrix.tables.js'></script>";
        return jsPath;
    }
}
