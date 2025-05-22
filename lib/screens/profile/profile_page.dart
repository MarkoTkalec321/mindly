import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../achievements/achievements_page.dart';  // Add this import

import './models/profile_page_model.dart';
export './models/profile_page_model.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  static String routeName = 'profilePage';
  static String routePath = '/profilePage';

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  late ProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView( 
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/background.png',
                ).image,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    ProfilePageModel.userName,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                        color: Color(0xFFF5F8FB),
                        fontSize: 35,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(75),  // Half of width/height (150/2) for circular shape
                  child: ProfilePageModel.getProfileImage(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                  child: GestureDetector(
                    onTap: () async {
                    final ImagePicker picker = ImagePicker();
                    try {
                      final XFile? image = await picker.pickImage(
                        source: ImageSource.gallery,
                        maxWidth: 1000,
                        maxHeight: 1000,
                        imageQuality: 70,
                      );
                      
                      if (image != null) {
                        // Update the profile picture in the model
                        ProfilePageModel.updateProfilePicture(image.path);
                        setState(() {}); // Refresh the UI
                      }
                    } catch (e) {
                      print('Error picking image: $e');
                      // Optionally show an error message to the user
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Failed to pick image'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF84E6D1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Change Profile Picture',
                            style: GoogleFonts.interTight(
                              textStyle: FlutterFlowTheme.of(context).titleSmall.copyWith(
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: GestureDetector(
                  onTap: () async {
                    final TextEditingController nameController = TextEditingController(text: ProfilePageModel.userName);
                    
                    await showDialog<String>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Change Name'),
                        content: TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            hintText: 'Enter new name',
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              ProfilePageModel.updateUserName(nameController.text);
                              setState(() {}); // Refresh the UI
                              Navigator.pop(context);
                            },
                            child: Text('Save'),
                          ),
                        ],
                      ),
                    );
                    
                    // Clean up the controller when the dialog is dismissed
                    nameController.dispose();
                  },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.07,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF84E6D1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            'Change Name',
                            style: GoogleFonts.interTight(
                              textStyle: FlutterFlowTheme.of(context).titleSmall.copyWith(
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AchievementsWidget.routePath);  // Changed from print statement
                    },
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.08,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF84E6D1),
                          borderRadius: BorderRadius.circular(20),  // Changed from 8 to 20 to match others
                        ),
                        child: Center(
                          child: Text(
                            'My Achievements',
                            style: GoogleFonts.interTight(
                              textStyle: FlutterFlowTheme.of(context).titleSmall.copyWith(
                                color: Colors.black,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}