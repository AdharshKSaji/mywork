import 'package:mywork/Model/projectmodel.dart';
import 'package:mywork/Model/slidermodel.dart';
import 'package:mywork/core/constants/imageconstants.dart';

List<ProjectModel> projectList = [
  // #1 project
  ProjectModel(
    title: 'Car Rental(Enikiou)',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/enoikiou.git',
    images: [
      CarouselModel(
        title: 'Register Page',
        subtitle: 'User Application',
        image:ImageConstants.carrentalreg ,
      ),
      CarouselModel(
        title: ' Login Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentallog,
      ),
      CarouselModel(
        title: 'Home Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentalhome,
      ),
      CarouselModel(
        title: '  Detail Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentaldetail,
      ),
      CarouselModel(
        title: 'Location Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentallocation,
      ),
      CarouselModel(
        title: 'Booked Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentalbook,
      ),
      CarouselModel(
        title: 'Payment Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentalpaymet,
      ),
      CarouselModel(
        title: 'Favourite Page',
        subtitle: 'User Application',
        image: ImageConstants.carrentalfav,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Firebase Auth',
      'FireStore',
      'Google Maps',
    ],
  ),

  // #2 project
  ProjectModel(
    title: 'News App using REST API',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/newsapi.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: ImageConstants.newsAppHome,
      ),
      
      CarouselModel(
        title: 'Article Details',
        subtitle: '',
        image: ImageConstants.newsAppDetails,
      ),
      CarouselModel(
        title: 'Search For News',
        subtitle: '',
        image: ImageConstants.newsAppSearch,
      ),
      
      
     
    ],
    skills: [
      'Flutter',
      'Dart',
      'REST API',
      'Provider',
      'Hive',
    ],
  ),

  // #3 project
  ProjectModel(
    title: 'TODO Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink:
        'https://github.com/AdharshKSaji/to_do.git',
    images: [
      CarouselModel(
        title: 'TODO List',
        subtitle: '',
        image: ImageConstants.todoAppHome,
      ),
      CarouselModel(
        title: 'Add TODO',
        subtitle: '',
        image: ImageConstants.todoAppAddItem,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Hive',
      'Type Adapter',
    ],
  ),

  // #4 project
  ProjectModel(
    title: 'Expense Tracker',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/budjecttracker.git',
    images: [
      CarouselModel(
        title: 'Expense Summary',
        subtitle: '',
        image: ImageConstants.expenseTrackerSummary,
      ),
      CarouselModel(
        title: 'Add New Income/Expense',
        subtitle: '',
        image: ImageConstants.expenseTrackerAddRecord,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Provider',
      'Sqflite',
    ],
  ),

  // #5 project
  ProjectModel(
    title: 'Notes Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/noteapp.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: ImageConstants.notesAppAddNote,
      ),
      CarouselModel(
        title: 'Add New Note',
        subtitle: '',
        image: ImageConstants.notesAppHome,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Hive',
      'Share Plus',
    ],
  ),

  // #6 project
  ProjectModel(
    title: 'Quiz Application',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/appquiz.git',
    images: [
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: ImageConstants.quizAppHome,
      ),
      CarouselModel(
        title: 'Questions',
        subtitle: '',
        image: ImageConstants.quizAppQuestion,
      ),
      CarouselModel(
        title: 'Correct Answer',
        subtitle: '',
        image: ImageConstants.quizAppQuestionCorrect,
      ),
      CarouselModel(
        title: 'Quiz Summary',
        subtitle: '',
        image: ImageConstants.quizAppSummary,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
    ],
  ),

  // #7 project
  ProjectModel(
    title: 'Amazon Prime Video UI Clone',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/AdharshKSaji/prime_videos.git',
    images: [
      CarouselModel(
        title: 'Login Page',
        subtitle: '',
        image: ImageConstants.primeAccountSelect,
      ),
      CarouselModel(
        title: 'User Page',
        subtitle: '',
        image: ImageConstants.primehome,
      ),
      CarouselModel(
        title: 'Movie Page',
        subtitle: '',
        image: ImageConstants.primescreen,
      ),
     
    ],
    skills: [
      'Flutter',
      'Dart',
      'Shared Preferences',
      'Google Fonts',
    ],
  ),

  // #8 project
  ProjectModel(
    title: 'Instagram UI Clone',
    subtitle: 'subtitle',
    summary: 'summary',
    gitLink: 'https://github.com/antonyaiwin/flutter_instagram_clone',
    liveLink: 'https://antonyaiwin.github.io/flutter_instagram_clone/',
    images: [
      CarouselModel(
        title: 'Login Page',
        subtitle: '',
        image: ImageConstants.instagramAccountSelect,
      ),
      CarouselModel(
        title: 'Account Selection Page',
        subtitle: '',
        image: ImageConstants.instagramLogin,
      ),
      CarouselModel(
        title: 'Home Page',
        subtitle: '',
        image: ImageConstants.instagramHome,
      ),
      CarouselModel(
        title: 'Search Page',
        subtitle: '',
        image: ImageConstants.instagramSearch,
      ),
    ],
    skills: [
      'Flutter',
      'Dart',
      'Staggered Grid',
      'Staggered Grid',
    ],
  ),
];
