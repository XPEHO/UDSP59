import 'package:flutter/material.dart';

class DotsStepper extends StatefulWidget {
  const DotsStepper({
    super.key,
    this.stepCount = 3,
    this.initialStep = 0,
    this.confidence = 1,
    this.activeColor = Colors.blue,
    this.intermediateColor = Colors.orange,
    this.color = Colors.grey,
    this.showControls = false,
    this.dotSize = 16.0,
    this.onStepChanged,
    this.controller,
  });

  final int stepCount;
  final int initialStep;
  final double confidence;
  final Color activeColor;
  final Color intermediateColor;
  final Color color;
  final bool showControls;
  final double dotSize;
  final Function(int step)? onStepChanged;
  final ScrollController? controller;

  @override
  State<DotsStepper> createState() => _DotsStepperState();
}

class _DotsStepperState extends State<DotsStepper> {
  int _currentStep = 0;

  @override
  void initState() {
    super.initState();
    _currentStep = widget.initialStep;
    widget.controller?.addListener(_onScroll);
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    if (widget.controller == null) return;

    double offset = widget.controller!.offset;
    double maxScrollExtent = widget.controller!.position.maxScrollExtent;
    double stepWidth = maxScrollExtent / (widget.stepCount - 1);
    int newStep = (offset / stepWidth).round();

    if (newStep != _currentStep && newStep >= 0 && newStep < widget.stepCount) {
      setState(() {
        _currentStep = newStep;
      });
    }
  }

  void _decrementStep() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep--;
      } else {
        _currentStep = widget.stepCount - 1; // Go to last step
      }
      widget.onStepChanged?.call(_currentStep);
    });
  }

  void _incrementStep() {
    setState(() {
      if (_currentStep < widget.stepCount - 1) {
        _currentStep++;
      } else {
        _currentStep = 0; // Reset to first step if at the end
      }
      widget.onStepChanged?.call(_currentStep);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.showControls)
          IconButton(
            icon: Icon(Icons.arrow_back_ios, color: widget.color),
            onPressed: _decrementStep,
          ),
        ...List.generate(widget.stepCount, (index) {
          int difference = (_currentStep - index).abs();
          // Determine dot size based on position relative to current step
          double size = switch (index) {
            // Dots before the current step (within confidence range)
            _
                when index >= _currentStep - widget.confidence &&
                    index < _currentStep =>
              widget.dotSize - (difference * 2.0),
            // Dots after the current step (within confidence range)
            _
                when index <= _currentStep + widget.confidence &&
                    index > _currentStep =>
              widget.dotSize - (difference * 2.0),
            // Current active dot - full size
            _ when index == _currentStep => widget.dotSize,
            // All other dots - smallest size
            _ => widget.dotSize - (widget.confidence * 2.0),
          };
          // Determine dot color based on position relative to current step
          Color color = switch (index) {
            // Dots before the current step (within confidence range) - intermediate color
            _
                when index >= _currentStep - widget.confidence &&
                    index < _currentStep =>
              widget.intermediateColor,
            // Dots after the current step (within confidence range) - intermediate color
            _
                when index <= _currentStep + widget.confidence &&
                    index > _currentStep =>
              widget.intermediateColor,
            // Current active dot - active color
            _ when index == _currentStep => widget.activeColor,
            // All other dots - default color
            _ => widget.color,
          };
          return Dot(size: size, color: color);
        }),
        if (widget.showControls)
          IconButton(
            icon: Icon(Icons.arrow_forward_ios, color: widget.color),
            onPressed: _incrementStep,
          ),
      ],
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({super.key, required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
