import 'package:flutter/material.dart';
import 'package:widget_utils/ui/ext_demo/date_util_demo.dart';
import 'package:widget_utils/ui/ext_demo/int_util_demo.dart';
import 'package:widget_utils/ui/ext_demo/string_util_demo.dart';
import 'package:widget_utils/ui/extra/advance_stepper.dart';
import 'package:widget_utils/ui/extra/basic_stepper.dart';
import 'package:widget_utils/ui/package/scratch_card_exp.dart';
import 'package:widget_utils/ui/package/showcase.dart';
import 'package:widget_utils/ui/screens/burger.dart';
import 'package:widget_utils/ui/screens/checkbox.dart';
import 'package:widget_utils/ui/screens/checkbox_all_select.dart';
import 'package:widget_utils/ui/screens/custom_app_theme.dart';
import 'package:widget_utils/ui/screens/dynamic_fontsize.dart';
import 'package:widget_utils/ui/screens/indian_flag_animation.dart';
import 'package:widget_utils/ui/screens/music_list.dart';
import 'package:widget_utils/ui/screens/pagination_exp.dart';
import 'package:widget_utils/ui/screens/password_validator.dart';
import 'package:widget_utils/ui/widgets/buttons.dart';
import 'package:widget_utils/ui/widgets/dropdown.dart';
import 'package:widget_utils/ui/widgets/res_bottom.dart';
import 'package:widget_utils/ui/widgets/slides.dart';
import 'package:widget_utils/ui/widgets/stepper.dart';
import 'package:widget_utils/ui/widgets/tab_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckBoxExample()));
              },
              icon: const Icon(Icons.send)),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AllSelectCheckbox()));
              },
              icon: const Icon(Icons.all_inbox))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ImageSizeAnimation()));
                    },
                    child: const Text("Select Burger Size")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomAppTheme()));
                    },
                    child: const Text("Select them")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DynamicFontSize()));
                    },
                    child: const Text("Select Font Size")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IndianFlag()));
                    },
                    child: const Text("Jai Hind")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MusicList()));
                    },
                    child: const Text("Music")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaginationExample()));
                    },
                    child: const Text("Pagination")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PwdValidationExample()));
                    },
                    child: const Text("Password Validation")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DateUtilDemo()));
                    },
                    child: const Text("Date Util")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IntUtilDemo()));
                    },
                    child: const Text("Int Util")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StringUtilDemo()));
                    },
                    child: const Text("String util")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdvanceStepper()));
                    },
                    child: const Text("Adv Stepper")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BasicStepper()));
                    },
                    child: const Text(" Basic Stepper")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ScratchCardExample()));
                    },
                    child: const Text("Scratcher Card")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ShowscaseDemo()));
                    },
                    child: const Text("Show Case")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Buttons()));
                    },
                    child: const Text("Buttons")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DropDownDemo()));
                    },
                    child: const Text("DropDown")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResponsiveBottom()));
                    },
                    child: const Text("Responsive Bottom")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomSlidersPage()));
                    },
                    child: const Text("Custom Sliders")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StepperDemo()));
                    },
                    child: const Text("Stepper")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabBarDemo()));
                    },
                    child: const Text("TabBar")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
