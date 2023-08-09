import 'package:intl/intl.dart';
import 'package:smart_admin_dashboard/core/constants/color_constants.dart';
import 'package:smart_admin_dashboard/responsive.dart';

import 'package:smart_admin_dashboard/screens/dashboard/components/mini_information_card.dart';

import 'package:smart_admin_dashboard/screens/dashboard/components/recent_forums.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/recent_users.dart';
import 'package:smart_admin_dashboard/screens/dashboard/components/user_details_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/app_button_widget.dart';
import '../../../core/widgets/input_widget.dart';
import '../../dashboard/components/header.dart';

class EnregistrerClientContenu extends StatefulWidget {
  @override
  State<EnregistrerClientContenu> createState() => _EnregistrerClientContenuState();
}

class _EnregistrerClientContenuState extends State<EnregistrerClientContenu> {
  late bool selected;

  late List<String> test;
  late List<String> autres;
  late List<String> garant;
  late List<String> seule;
  late List<String> attestation;
  late List<String> etude;
  late List<String> process;



  late List<String> check;
  late List<String> coche;
  late List<String> coch;
  late List<String> visite;
  late List<String> vecu;
  late List<String> checknext;

  late List<String> visa;
  late String typeVisa;
  late List<String> accomp;
  late List<String> check2;
  late List<String> enfant2;
  late List<String> statutMatrimonial;
  late List<String> passportValide;
  late List<String> casier;
  late List<String> sante;
  late List<String> enfant;
  late List<String> emploie;
  late List<String> emploieok;
  late List<String> francais;
  late List<String> anglais;
  late List<String> visitecanada;
  late List<String> residentpermanent;
  late List<String> compagnie;
  late List<String> atestationwork;
  late List<String> startprocedure;
  late bool enabled;
  late String dropdownVal;
  late String dropdownVa;
  late String dropdownValue;
  late String dropdown;
  late String dropdow;
  late String dropdo;
  late String dropdownValues;
  late List<String> sexe;
  // late List<String> typeVisa;

  //creation des controller qui von recuperer les variable saisie

        // debut controller texte
  TextEditingController emailEditingController=TextEditingController();

  TextEditingController nomEditingController=TextEditingController();
  TextEditingController prenomEditingController=TextEditingController();
  TextEditingController communeEditingController=TextEditingController();
  TextEditingController professionEditingController=TextEditingController();
  TextEditingController sexeEditingController=TextEditingController();

  TextEditingController dateEditingController=TextEditingController();
  TextEditingController ageEnfantEditingController=TextEditingController();
  TextEditingController EditingController=TextEditingController();
  TextEditingController niveauEnfantEditingController=TextEditingController();
  TextEditingController anneeExperienceEditingController=TextEditingController();

  TextEditingController niveauCompagnonEditingController=TextEditingController();

  TextEditingController domaineConcerneEditingController=TextEditingController();
  TextEditingController ageConcerneEditingController=TextEditingController();

  TextEditingController ageEnfant2EditingController=TextEditingController();
  TextEditingController niveauEnfant2EditingController=TextEditingController();

  //fin controller texte

        //debut controller select

        //fin controller select
  //fin de creationdes controller

  @override
  void initState() {
   test=["oui","non"];
   autres=["oui","non"];
   garant=["oui","non"];
   seule=["oui","non"];
   attestation=["oui","non"];
   etude=["oui","non"];
   process=["oui","non"];


    selected = false;
    dropdownValue = "oui payer";
    if (dropdownValue=="oui payer"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();

    coch=["Oui","Non"];
    dropdo = 'Oui';
    if (dropdownValue=="Oui" && typeVisa=="Travailleur temporaire" ){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();
    accomp=["oui je serais accompagner","non j'irait seul"];
    vecu=["oui j'y ai deja vecu","non je n'est jamain vecu"];
    visite=["oui j'ai deje visiter", "non jamais visite"];
    check = ['oui','non'];
    coche = ['yes','no'];
    checknext = ['oui','non'];
    check2 = ['oui','non'];
    enfant2 =["oui j'ai des enfants", "non j'ai aucun enfant"];
    francais=['Bas','Intermediaire', 'Eleve'];
    anglais=['Bas','Intermediaire', 'Eleve'];

    passportValide = ['oui mon passport est valide','Non mon passport est invalide'];
    dropdownVa="oui mon passport est valide";
    if (dropdownVa=="oui je suis parent"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    sante = ["Oui j'ai des probleme de sante",'Non aucun probleme de sante'];


    enfant = ['oui je suis parent','Non je ne suis pas erent'];
    // enfant2 ="oui j'ai des enfants";
    // enfant2 = ["oui j'ai des enfants","Non je n'es pas j'ai des enfants"];
    dropdownValues="oui je suis parent";
    // if (dropdownValues=="oui je suis parent"){
    //   enabled = true;
    // }
    // else{
    //   enabled = false;
    // }
    // super.initState();

    typeVisa = 'Visa Etudiant';

    if (typeVisa=="Visa Etudiant"){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    dropdownValue = 'oui';
    if (dropdownValue=="oui" && typeVisa=="visa permanant" ){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();

    dropdown = 'oui';
    if (dropdownValue=="oui" && typeVisa=="visa visiteur" ){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();

    dropdow = 'yes';
    if (dropdownValue=="yes" && typeVisa=="visa visiteur" ){
      enabled = true;
    }
    else{
      enabled = false;
    }
    super.initState();


    emploie = ['Oui emploie valide','Non pas emploie valide'];


    casier=["oui un casier jusdiciaire","non j'ai aucun casier judiciaire"];



    visitecanada = ['Oui','Non'];
    residentpermanent = ['Oui','Non'];
    compagnie = ['Oui','Non'];
    atestationwork = ['Oui','Non'];
    startprocedure = ['Oui','Non'];
    dropdownVal="Celibataire";
    emploieok =["oui j'ai un emploie valide","non je n'est aucun emploie"];
    statutMatrimonial = ['Marié', 'Celibataire', 'Veuve / Veuf'];
    sexe = ['Feminin', 'Masculin'];
    visa = ['Visa Etudiant', 'travailleur temporaire', 'Visa Visiteur','visa permanant'];

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        //padding: EdgeInsets.all(defaultPadding),
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(height: defaultPadding),
            Card(
              color: secondaryColor,
              elevation: 5,
              margin: EdgeInsets.fromLTRB(32, 32, 64, 32),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DOSSIER CLIENT",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: nomEditingController,
                            keyboardType: TextInputType.text,
                            onSaved: (String? value) {
                              // This optional block of code can be used to run
                              // code when the user saves the form.
                            },
                            onChanged: (String? value) {
                                print(nomEditingController.text);
                            },

                            topLabel: "Noms",

                            hintText: "Enter vos Noms",
                            // prefixIcon: FlutterIcons.chevron_left_fea,
                          ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController:prenomEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(prenomEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Prenoms",
                              hintText: "Entrer vos Prenoms",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),),
                        ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController:communeEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(communeEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                             topLabel: "Commune",
                              hintText: "A quelle Commune appartenez vous?",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Quelle est votre sexe?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {                                },
                                items: sexe
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ), // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              // enabled:enabled,
                              kController: professionEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(professionEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },

                              topLabel: "Profession",

                              hintText: "Entrer votre profession",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                // enabled: enabled,
                                labelText: 'Quelle est votre type de visa?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: typeVisa,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                                setState((){
                                  if(newValue=="visa permanant"){
                                    enabled=true;
                                  }else{
                                    enabled=false;
                                  }
                                  typeVisa=newValue!;
                                });
                              },
                              items: visa
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                         ],
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      // bouton pur cocher
                      // Checkbox(value: selected, onChanged: (value){
                      //   setState(() {
                      //     selected =!selected;
                      //   });
                      // }),

                      SizedBox(height: 24.0),


                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Consultation payé?',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          contentPadding: EdgeInsets.all(10),
                        ),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        iconSize: 24,
                        elevation: 16,
                        style: const TextStyle(
                            color: Colors.deepPurple
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            if(newValue=="oui"){
                              enabled = true;
                            } else{
                              enabled= false;
                            }
                            dropdownValue = newValue!;
                          });
                        },
                        items: check
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                            .toList(),
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(

                              decoration: InputDecoration(
                                labelText: 'Quelle est votre statut matrimoniale?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              // enableFeedback: enabled,
                              value: dropdownVal,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                                setState(() {
                                if(newValue=="celibataire"){
                                  enabled = true;
                                } else{
                                  enabled= false;
                                }
                                dropdownVal = newValue!;
                              });                           },
                              items: statutMatrimonial
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Votre passport est-il valide?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: dropdownVa,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  if(newValue=="oui mon passport est valide"){
                                    enabled = true;
                                  } else{
                                    enabled= false;
                                  }
                                  dropdownVa = newValue!;
                                });
                              },
                              items: passportValide
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),

                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController:dateEditingController,
                              keyboardType: TextInputType.datetime,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(dateEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },

                              topLabel: "Quelle est la date d'expiration?",
                              // hintText: "Entrer votre profession",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous un cassier judiciaire?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {
                              },
                              items: casier
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),

                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),

                      Row(
                        children: [
                          Expanded(
                            flex: 2,

                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous des problemes de santé?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {                                },
                              items: sante
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),

                        ],
                      ),
                      SizedBox(height: 24.0),

                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                labelText: 'Avez vous des enfants?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              value: dropdownValues,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  if(newValue=="oui je suis parent"){
                                    enabled = true;
                                  } else{
                                    enabled= false;
                                  }
                                  dropdownValues = newValue!;
                                });
                              },
                              items: enfant
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: ageEnfantEditingController,
                              keyboardType: TextInputType.number,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(ageEnfantEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quelle est l'age de vos des enfants?",
                              hintText: "Entrer le(s) age(s)",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: niveauEnfantEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(niveauEnfantEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Niveau de scolarite",

                              hintText: "Entrer leurs niveaux",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: anneeExperienceEditingController,
                              keyboardType: TextInputType.number,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(anneeExperienceEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quelle est le nombres d'années professionel?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Disposez vous un emploie, une offre validée?',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              // value: emploieok,
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                              },
                              items: emploie
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      //caracteristique de l'epoux....
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONJOINT/ EPOUX/ EPOUSE  ",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: niveauCompagnonEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(niveauCompagnonEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quel est son niveau de scolarité ?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: domaineConcerneEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(domaineConcerneEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quelle est le nombres d'années professionel?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: domaineConcerneEditingController,
                              keyboardType: TextInputType.text,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(domaineConcerneEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quel est votre âge ?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      //connaissance linguistique
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CONNAISSANCES LINGUISTIQUES  ",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Quel est votre niveau en francais',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {
                              },
                              items: francais
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                          Expanded(
                            child:  DropdownButtonFormField <String>(
                              decoration: InputDecoration(
                                labelText: 'Quel est votre niveau en anglais',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                contentPadding: EdgeInsets.all(10),
                              ),
                              icon: const Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: const TextStyle(
                                  color: Colors.deepPurple
                              ),

                              onChanged: (String? newValue) {                              },
                              items: anglais
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: niveauCompagnonEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(niveauCompagnonEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quel est l'âge de vos enfants ?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                          SizedBox(
                            width: defaultPadding,),
                          Expanded(
                            flex: 2,
                            child:  InputWidget(
                              enabled:enabled,
                              kController: niveauCompagnonEditingController,
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (String? value) {
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              onChanged: (String? value) {
                                print(niveauCompagnonEditingController.text);
                                // This optional block of code can be used to run
                                // code when the user saves the form.
                              },
                              topLabel: "Quel est leur niveau de scolarité ?",
                              hintText: "Entrer une reponse",
                              // prefixIcon: FlutterIcons.chevron_left_fea,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.0),
                      AppButton(
                        type: ButtonType.PRIMARY,
                        text: "Envoyer",
                      ),
                      SizedBox(height: 24.0),

                      //FIN DU DEUXIEME FORMULAIRE
                    ],
                  ) ,
                ),
              ),
            ),

              //fIN DU PREMIER FORMULAIRE
            Card(
                color: secondaryColor,
                elevation: 5,
                margin: EdgeInsets.fromLTRB(32, 32, 64, 32),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Form(
                    child: Column(
                      children: [

                        //CONDITION POUR LE TROISIEME FORMULAIRE
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Consultation payé?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: dropdow,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="yes"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdow = newValue!;
                                  });
                                },
                                items: coche
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  // enabled: enabled,
                                  labelText: 'Quelle est votre type de visa?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: typeVisa,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {
                                  setState((){
                                    if(newValue=="visa permanant"){
                                      enabled=true;
                                    }else{
                                      enabled=false;
                                    }
                                    typeVisa=newValue!;
                                  });
                                },
                                items: visa
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        // DEBUT DU TROISIEME FORMULAIRE
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(

                                decoration: InputDecoration(
                                  labelText: 'Quelle est votre statut matrimoniale?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                // enableFeedback: enabled,
                                value: dropdownVal,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="celibataire"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdownVal = newValue!;
                                  });                           },
                                items: statutMatrimonial
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Votre passport est-il valide?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: dropdownVa,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="oui mon passport est valide"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdownVa = newValue!;
                                  });
                                },
                                items: passportValide
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),

                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quelle est la date d'expiration?",
                                // hintText: "Entrer votre profession",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous un cassier judiciaire?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {                                },
                                items: casier
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous des problemes de santé?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {                                },
                                items: sante
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous des enfants?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),

                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: enfant
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },

                                topLabel: "Quelle est l'age de vos des enfants?",

                                hintText: "Entrer le(s) age(s)",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },
                                topLabel: "Raison de voyage ?",

                                hintText: "Quelle est la raison de ce voyage ?",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },
                                topLabel: "Pendant combien de temps comptez vous rester au Canada ? ",
                                hintText: "Entrer la duree de votre sejour",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous déjà visité le Canada ? ',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: visite
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous déjà vécu au Canada en tant que résident permanent ?	 ',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: vecu
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quel est votre province de destination ? ",

                                hintText: "Entrer une valeur",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Serez vous accompagné par quelqu'un ?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: accomp
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        AppButton(
                          type: ButtonType.PRIMARY,
                          text: "Envoyer",
                        ),
                        SizedBox(height: 24.0),
                        //FIN DU DEUXIEME FORMULAIRE
                      ],
                    ) ,

                  ),
                  //CONDITION POUR LE TROISIEME FORMULAIRE


                  // DEBUT DU TROISIEME FORMULAIRE



                  //FIN DU TROISIEME FORMULAIRE

                ),

              ),
            Card(
                color: secondaryColor,
                elevation: 5,
                margin: EdgeInsets.fromLTRB(32, 32, 64, 32),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Form(
                    child: Column(
                      children: [

                        //CONDITION POUR LE TROISIEME FORMULAIRE
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Consultation payé?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: dropdo,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="Oui"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdo = newValue!;
                                  });
                                },
                                items: coch
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  // enabled: enabled,
                                  labelText: 'Quelle est votre type de visa?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: typeVisa,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {
                                  setState((){
                                    if(newValue=="visa permanant"){
                                      enabled=true;
                                    }else{
                                      enabled=false;
                                    }
                                    typeVisa=newValue!;
                                  });
                                },
                                items: visa
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        // DEBUT DU Quatrieme FORMULAIRE
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(

                                decoration: InputDecoration(
                                  labelText: 'Quelle est votre statut matrimoniale?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                // enableFeedback: enabled,
                                value: dropdownVal,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="celibataire"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdownVal = newValue!;
                                  });                           },
                                items: statutMatrimonial
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Votre passport est-il valide?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                value: dropdownVa,
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    if(newValue=="oui mon passport est valide"){
                                      enabled = true;
                                    } else{
                                      enabled= false;
                                    }
                                    dropdownVa = newValue!;
                                  });
                                },
                                items: passportValide
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),

                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quelle est la date d'expiration?",
                                // hintText: "Entrer votre profession",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous un cassier judiciaire?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {                                },
                                items: casier
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),

                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField <String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous des problemes de santé?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),

                                onChanged: (String? newValue) {                                },
                                items: sante
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),

                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous des enfants?',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),

                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: enfant
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: ageEnfantEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },

                                topLabel: "Quelle est l'age de vos des enfants?",

                                hintText: "Entrer le(s) age(s)",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: ageEnfantEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quel est votre profession/domaine de travail ?	",

                                hintText: "Entrer un element de reponse",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Depuis combien de temps ? ",
                                hintText: "Entrer une element de reponse",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: 'Avez vous une attestation de travail, bulletin de salaire et tous les autres documents relatifs à votre emploi?	',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: attestation
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous déjà entamé une procédure d'immigration au Canada ?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: process
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),

                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous déjà entamé une procédure d'immigration au Canada ?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: process
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quel programme et quelle a été la décision ? ",
                                hintText: "Entrer une valeur",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Si oui depuis quand ? ",
                                hintText: "Entrer une valeur",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quel programme et quelle a été la décision ? ",
                                hintText: "Entrer une valeur",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous déjà entamé une procédure d'immigration au Canada ?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: process
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Quel programme et quelle a été la décision ? ",
                                hintText: "Entrer une valeur",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous une offre d'emploi d'un employeur Canadien ? ",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: emploie
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous un diplôme d'études (secondaire, professionnel, universitaire ) ? ",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: etude
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  InputWidget(
                                enabled:enabled,
                                kController: emailEditingController,
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                onChanged: (String? value) {
                                  print(emailEditingController.text);
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                topLabel: "Depuis combien de temps ? ",
                                hintText: "Entrer une element de reponse",
                                // prefixIcon: FlutterIcons.chevron_left_fea,
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous un membre de votre famille déjà au Canada?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: garant
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Comptez vous immigrer seul(e) ou en famille ?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: seule
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Parlez vous d'autres langues à part le français?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                  
                                },
                                items: autres
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                            SizedBox(
                              width: defaultPadding,
                            ),
                            Expanded(
                              flex: 2,
                              child:  DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  labelText: "Avez vous fait un test de connaissances linguistiques?",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                                icon: const Icon(Icons.arrow_downward),
                                iconSize: 24,
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.deepPurple
                                ),
                                onChanged: (String? newValue) {
                                },
                                items: test
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                })
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.0),
                        AppButton(
                          type: ButtonType.PRIMARY,
                          text: "Envoyer",
                        ),
                        SizedBox(height: 24.0),
                        //FIN DU DEUXIEME FORMULAIRE
                      ],
                    ) ,

                  ),
                  //CONDITION POUR LE TROISIEME FORMULAIRE


                  // DEBUT DU TROISIEME FORMULAIRE



                  //FIN DU TROISIEME FORMULAIRE

                ),

              ),


            ],

          ),
        ),
      ),
    );
  }

  // Widget buildTextField(int nb, String labelText, String placeholder, bool isPasswordTextField, TextEditingController textEditingController) {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 35.0),
  //     child: TextField(
  //       maxLines: nb,
  //       controller: textEditingController,
  //       //obscureText: isPasswordTextField ? showPassword : false,
  //       decoration: InputDecoration(
  //           suffixIcon: isPasswordTextField
  //               ? IconButton(
  //             onPressed: () {},
  //             icon: const Icon(Icons.remove_red_eye, color: Colors.grey,),
  //           )
  //               : null,
  //           contentPadding: const EdgeInsets.only(bottom: 3),
  //           labelText: labelText,
  //           labelStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black,),
  //           floatingLabelBehavior: FloatingLabelBehavior.always,
  //           hintText: placeholder,
  //           hintStyle: const TextStyle(fontSize: 13, color: Colors.black,)
  //       ),
  //     ),
  //   );
  // }
  //
  //
  // Widget (String labelText, String placeholder, TextEditingController textEditingController) {
  //   //DateTime dt = DateTime.parse(placeholder);
  //
  //   return Padding(
  //       padding: const EdgeInsets.only(bottom: 35.0),
  //       child: TextField(
  //         controller: textEditingController,
  //         style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black,),
  //         decoration: InputDecoration(
  //           labelText: labelText,
  //           hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black,),
  //           suffixIcon: const Icon(Icons.calendar_month, color: Colors.blueGrey,),
  //         ),
  //         readOnly: true,
  //         onTap: () async {
  //           DateTime? pickedDate = await showDatePicker(
  //               context: context,
  //               initialDate: DateTime.now(),
  //               firstDate: DateTime(1950),
  //               lastDate: DateTime(2100)
  //           );
  //           if (pickedDate != null) {
  //             String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
  //             setState(() {
  //               if(labelText == "Date debut"){
  //                 dateEditingController.text = formattedDate; //set output date to TextField value.
  //               }else if(labelText == "Date fin"){
  //                 dateEditingController.text = formattedDate; //set output date to TextField value.
  //               }
  //             });
  //           } else {}
  //         },
  //       )
  //   );
  // }

}
