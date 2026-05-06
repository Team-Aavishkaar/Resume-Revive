import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';
import 'package:resume_revive/core/theme/colors.dart';
import 'package:resume_revive/core/theme/text_styles.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Placeholder(
                
              ),
            ),


            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                // height: 300,
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, -2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height:10,
                      ),

                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.description, color: Colors.black),
                      ),




                      Text(
                        'Resume Revive',
                        style: context.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        'Create your professional resume in minutes with our AI-powered builder.',
                        style: context.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).dividerColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            spacing: 5,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.stars,size: 10,),
                              Text(
                                'Trusted by Professionals',
                                style: context.textTheme.labelSmall,
                              ),
                            ],
                          ),
                        ),
                      ),

                     NeoPopButton(
    color: const Color.fromRGBO(0, 0, 0, 1),
    buttonPosition: Position.center,
    onTapUp: () {
      HapticFeedback.lightImpact();
    },
    border: Border.fromBorderSide(
      BorderSide(
        color: context.borderColor,
        width: 2,
      ),
    ),
    child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
                Text("Continue with Google", style: TextStyle(color: Colors.white)),
            ],
        ),
    ),
),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}