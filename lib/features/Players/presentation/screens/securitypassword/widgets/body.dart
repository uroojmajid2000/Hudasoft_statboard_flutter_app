part of '../securitypassword_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Enter Current Password",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyTextField(
                // controller: _passwordController,
                hintText: '***************',
                prefixIcon: 'assets/icons/password_icon.png',
                obscureText: true,
                onChange: (value) {},
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Enter New Password",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyTextField(
                // controller: _passwordController,
                hintText: '***************',
                prefixIcon: 'assets/icons/password_icon.png',
                obscureText: true,
                onChange: (value) {},
              ),
              const SizedBox(height: 18),
                Button(
                  child: Text('SAVE'),
                  onPressed: () {
                    Navigate.to(context, EditProfileScreen.id);
                  })     ,  const SizedBox(height: 18),
            ]),
          ),
        ));
  }
}
