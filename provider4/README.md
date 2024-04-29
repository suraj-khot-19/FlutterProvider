<table>
<tr>
    <td><img src="https://github.com/suraj-khot-19/img/blob/main/provider4.gif" alt="provider4"></td>
</tr>
</table>

<p>
crating provider with class name MyProvider
<pre>
        import 'package:flutter/foundation.dart';

        class MyProvider with ChangeNotifier {
        double _value = 1.0;
        double get value => _value;
        void setValue(double val) {
            _value = val;
            notifyListeners();
        }
        }
</pre>
</p>
   

<p>
crating mltiprovider in main.dart
<pre>
    Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
        ChangeNotifierProvider(create: (_) => CountProvider()),
      ],
      child: MaterialApp(),
    );
    }
</pre>
</p>
<p>
crating consumer
<pre>
    Consumer<MyProvider>(builder: (context, val, child) {
              return Slider();
    }),
</pre>
</p>
<p>
using withOpacity()
<pre>
where we use val from our provider 
            child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red.withOpacity(val.value),
                      ),
            )
</pre>
</p>
