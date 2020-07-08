import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function() onTap;
  final double heigth;
  final BorderRadius borderRadius;

  const MaterialButtonWidget({
    Key key,
    this.child,
    this.color,
    this.onTap,
    this.heigth = 45,
    this.borderRadius = null,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(10),
      child: Material(
        color: color ?? Theme.of(context).primaryColor,
        child: InkWell(
          onTap: onTap ?? null,
          child: Container(
            height: heigth ?? 45,
            decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: child,
          ),
        ),
      ),
    );
  }
}
