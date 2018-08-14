using System.Collections.Generic;
using System.Web.Optimization;

namespace VNPRECRUITMENT
{
    public class BundleConfig
    {
        // For more information on bundling, visit http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            //Css
            var stylebundle = new StyleBundle("~/resources/admin/css").Include(
                "~/Resources/admin/styles/plugins/bootstrap/css/bootstrap.min.css",
                "~/Resources/admin/styles/plugins/font-awesome-update/css/font-awesome.min.css",
                "~/Resources/admin/styles/fonts/style.css",
                "~/Resources/admin/styles/css/main.css",
                "~/Resources/admin/styles/css/main-responsive.css",
                "~/Resources/admin/styles/plugins/iCheck/skins/all.css",
                "~/Resources/admin/styles/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css",
                "~/Resources/admin/styles/plugins/perfect-scrollbar/src/perfect-scrollbar.css",
                "~/Resources/admin/styles/css/theme_light.css",
                "~/Resources/admin/styles/plugins/select2/select2.css",
                "~/Resources/admin/styles/plugins/datepicker/css/datepicker.css",
                "~/Resources/admin/styles/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css",
                "~/Resources/admin/styles/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css",
                "~/Resources/admin/styles/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.css",
                "~/Resources/admin/styles/plugins/jQuery-Tags-Input/jquery.tagsinput.css",
                "~/Resources/admin/styles/plugins/bootstrap-fileupload/bootstrap-fileupload.min.css",
                "~/Resources/admin/styles/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css",
                "~/Resources/admin/styles/plugins/bootstrap-modal/css/bootstrap-modal.css",
                "~/Resources/admin/styles/plugins/jQuery-File-Upload/css/jquery.fileupload-ui.css",
                "~/Resources/admin/styles/plugins/datetimepicker/jquery.datetimepicker.css"
                );
            stylebundle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(stylebundle);

            //Main Javascript
            var scriptbundle = new ScriptBundle("~/resources/admin/js").Include(
                "~/Resources/admin/styles/js/jquery.min.js",
                "~/Resources/admin/styles/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js",
                "~/Resources/admin/styles/plugins/bootstrap/js/bootstrap.min.js",
                "~/Resources/admin/styles/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js",
                "~/Resources/admin/styles/plugins/blockUI/jquery.blockUI.js",
                "~/Resources/admin/styles/plugins/iCheck/jquery.icheck.min.js",
                "~/Resources/admin/styles/plugins/perfect-scrollbar/src/jquery.mousewheel.js",
                "~/Resources/admin/styles/plugins/perfect-scrollbar/src/perfect-scrollbar.js",
                "~/Resources/admin/styles/plugins/less/less-1.5.0.min.js",
                "~/Resources/admin/styles/plugins/jquery-cookie/jquery.cookie.js",
                "~/Resources/admin/styles/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js",
                "~/Resources/admin/styles/js/main.js",
                "~/Resources/admin/styles/plugins/flot/jquery.flot.js",
                "~/Resources/admin/styles/plugins/flot/jquery.flot.resize.js",
                "~/Resources/admin/styles/plugins/flot/jquery.flot.categories.js",
                "~/Resources/admin/styles/plugins/flot/jquery.flot.pie.js",
                "~/Resources/admin/styles/js/charts.js",
                "~/Resources/admin/styles/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js",
                "~/Resources/admin/styles/plugins/autosize/jquery.autosize.min.js",
                "~/Resources/admin/styles/plugins/select2/select2.min.js",
                "~/Resources/admin/styles/plugins/jquery.maskedinput/src/jquery.maskedinput.js",
                "~/Resources/admin/styles/plugins/jquery-maskmoney/jquery.maskMoney.js",
                "~/Resources/admin/styles/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js",
                "~/Resources/admin/styles/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js",
                "~/Resources/admin/styles/plugins/bootstrap-daterangepicker/moment.min.js",
                "~/Resources/admin/styles/plugins/bootstrap-daterangepicker/daterangepicker.js",
                "~/Resources/admin/styles/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js",
                "~/Resources/admin/styles/plugins/bootstrap-colorpicker/js/commits.js",
                "~/Resources/admin/styles/plugins/jQuery-Tags-Input/jquery.tagsinput.js",
                "~/Resources/admin/styles/plugins/bootstrap-fileupload/bootstrap-fileupload.min.js",
                "~/Resources/admin/styles/plugins/ckeditor/ckeditor.js",
                "~/Resources/admin/styles/plugins/ckeditor/adapters/jquery.js",
                "~/Resources/admin/styles/js/form-elements.js",
                "~/Resources/admin/styles/plugins/bootstrap-modal/js/bootstrap-modal.js",
                "~/Resources/admin/styles/plugins/bootstrap-modal/js/bootstrap-modalmanager.js",
                "~/Resources/admin/styles/js/ui-modals.js",
                "~/Resources/admin/styles/js/jquery.validate.min.js",
                 "~/Resources/admin/styles/plugins/datetimepicker/jquery.datetimepicker.full.min.js",
                 "~/Resources/admin/styles/js/lazy.min.js"
                );
            scriptbundle.Orderer = new NonOrderingBundleOrderer();

            bundles.Add(scriptbundle);

            //AngularJs
            var angularbudle = new ScriptBundle("~/resources/angularjs").Include(
                "~/Resources/admin/styles/js/angular.min.js",
                "~/Resources/admin/styles/js/angular-sanitize.js",
                "~/Resources/admin/styles/js/angular-route.min.js",
                "~/Resources/admin/styles/js/ui-bootstrap-tpls-0.12.0.min.js",
                "~/Resources/admin/styles/js/apps.js"
                );
            angularbudle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(angularbudle);

            //AngularApp
            var appbudle = new ScriptBundle("~/resources/admin/ngapp").Include(
                "~/Resources/admin/styles/ngapps/module.js",
                "~/Resources/admin/styles/ngapps/services.js",
                "~/Resources/admin/styles/ngapps/controllers.js"
                );
            appbudle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(appbudle);

            //Utils
            var utilbudle = new ScriptBundle("~/resources/utils").Include(
                "~/Resources/admin/styles/js/utils.js"
                );
            utilbudle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(utilbudle);

            //TinyEditor
            var tinyBundle = new ScriptBundle("~/resources/admin/tinyjs").Include(
                "~/Resources/admin/styles/plugins/tinyeditor/tiny.editor.packed.js"
                );
            tinyBundle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(tinyBundle);
            var tinycssBundle = new StyleBundle("~/resources/admin/tinycss").Include(
               "~/Resources/admin/styles/plugins/tinyeditor/style.css"
               );
            tinycssBundle.Orderer = new NonOrderingBundleOrderer();
            bundles.Add(tinycssBundle);

        }
    }

    internal class NonOrderingBundleOrderer : IBundleOrderer
    {
        public IEnumerable<BundleFile> OrderFiles(BundleContext context, IEnumerable<BundleFile> files)
        {
            return files;
        }
    }
}
