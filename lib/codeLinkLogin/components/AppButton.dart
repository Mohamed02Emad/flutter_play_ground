import 'package:flutter/material.dart';
import 'package:flutter_play_ground/utils/Constants.dart';
class AppButton extends StatefulWidget {
  TextEditingController email;
  final Function onClick;

  AppButton({super.key, required this.email , required this.onClick});

  @override
  State<AppButton> createState() => _AppButtonState(email);
}

class _AppButtonState extends State<AppButton> {
  TextEditingController email;

  _AppButtonState(this.email);

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: SizedBox(
        width: 150.0,
        height: 45.0,
        child: ElevatedButton(
          onPressed: () {
            _toggleLoading();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 217, 198, 164),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          child: _getButtonContent(),
        ),
      ),
    );
  }

  Widget _getButtonContent() {
    if (_isLoading) {
      return const SizedBox(
        width: 20.0,
        height: 20.0,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    } else {
      return const Text("Login");
    }
  }

  void _toggleLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _isLoading = !_isLoading;
      });
      widget.onClick();
    });
  }


}
