<%-- 
    Document   : ctreining1
    Created on : Mar 8, 2014, 3:08:25 PM
    Author     : Sir Pawel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png">

        <title>#Training Buddy - create training plan</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/animations.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <%@ include file="include/nav.jsp" %> 

        <%-- content inside main container --%> 
        <div class="row">    
            <div class="col-md-12 topHeader gap15"><h1 class="left trainWith">Train with</h1> <h1 class="right trainingBuddyH">#Training<span>Buddy</span></h1></div>
        </div>
        <div class="row"> 
            <div class="col-md-12 gap10"></div>
        </div>
        <div class="row"> 
            <div class="col-md-12 grey">
                <h1>Create training plan</h1>
            </div>
            <div class="col-md-12 grey gap10">
          

                <form class="form-horizontal" id="formc" name="formc" method="get" action="TplanServlet">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Training plan title</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="tpName" id="tpName" placeholder="Title">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">What muscle group would you like to train?</label>
                        <div class="col-sm-10">
                            <select name="g1" id="g1" class="form-control">
                                <option>Abductors</option>
                                <option>Biceps</option>
                                <option>Calves</option>
                                <option>Chest</option>
                                <option>Forearms</option>
                                <option>Glutes</option>
                                <option>Hamstrings</option>
                                <option>Lats</option>
                                <option>Lower Back</option>
                                <option>Middle Back</option>
                                <option>Neck</option>
                                <option>Quadriceps  </option>
                                <option>Shoulders </option>
                                <option>Traps</option>
                                <option>Triceps</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 1</label>
                        <div class="col-sm-10">

                            <select name="a1" id="a1" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 2</label>
                        <div class="col-sm-10">

                            <select name="a2" id="a2" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 3</label>
                        <div class="col-sm-10">

                            <select name="a3" id="a3" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 4</label>
                        <div class="col-sm-10">

                            <select name="a4" id="a4" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 5</label>
                        <div class="col-sm-10">

                            <select name="a5" id="a5" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">What muscle group would you like to train?</label>
                        <div class="col-sm-10">
                            <select name="g2" id="g2" class="form-control">
                                <option>Abductors</option>
                                <option>Biceps</option>
                                <option>Calves</option>
                                <option>Chest</option>
                                <option>Forearms</option>
                                <option>Glutes</option>
                                <option>Hamstrings</option>
                                <option>Lats</option>
                                <option>Lower Back</option>
                                <option>Middle Back</option>
                                <option>Neck</option>
                                <option>Quadriceps  </option>
                                <option>Shoulders </option>
                                <option>Traps</option>
                                <option>Triceps</option>

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 1</label>
                        <div class="col-sm-10">

                            <select name="a6" id="a6" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 2</label>
                        <div class="col-sm-10">

                            <select name="a7" id="a7" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 3</label>
                        <div class="col-sm-10">

                            <select name="a8" id="a8" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 4</label>
                        <div class="col-sm-10">

                            <select name="a9" id="a9" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 5</label>
                        <div class="col-sm-10">

                            <select name="a10" id="a10" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">What muscle group would you like to train?</label>
                        <div class="col-sm-10">
                            <select name="g3" id="g3" class="form-control">
                                <option>Abductors</option>
                                <option>Biceps</option>
                                <option>Calves</option>
                                <option>Chest</option>
                                <option>Forearms</option>
                                <option>Glutes</option>
                                <option>Hamstrings</option>
                                <option>Lats</option>
                                <option>Lower Back</option>
                                <option>Middle Back</option>
                                <option>Neck</option>
                                <option>Quadriceps  </option>
                                <option>Shoulders </option>
                                <option>Traps</option>
                                <option>Triceps</option>

                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 1</label>
                        <div class="col-sm-10">

                            <select name="a11" id="a11" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 2</label>
                        <div class="col-sm-10">

                            <select name="a12" id="a12" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 3</label>
                        <div class="col-sm-10">

                            <select name="a13" id="a13" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 4</label>
                        <div class="col-sm-10">

                            <select name="a14" id="a14" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Exercise 5</label>
                        <div class="col-sm-10">

                            <select name="a15" id="a15" class="form-control">
                                <option> 3/4 Sit-Up (x3)</option>
                                <option> 3/4 Sit-Up (x4)</option>
                                <option>Ab Crunch Machine (x3)</option>
                                <option>Ab Crunch Machine (x4)</option>
                                <option>Bottoms Up (x3)</option>
                                <option>Bottoms Up (x4)</option>
                                <option>Butt-Ups (x3)</option>
                                <option>Butt-Ups (x4)</option>
                                <option>Cross-Body Crunch (x3)</option>
                                <option>Cross-Body Crunch (x4)</option>
                                <option> Cocoons (x3)</option>
                                <option> Cocoons (x4)</option>
                                <option> ----- </option>
                                <option> Alternate Hammer Curl (x3)</option>
                                <option> Alternate Hammer Curl (x4)</option>
                                <option>  Alternate Incline Dumbbell Curl (x3)</option>
                                <option>  Alternate Incline Dumbbell Curl (x4)</option>
                                <option>   Barbell Curl (x3)</option>
                                <option>   Barbell Curl (x4)</option>
                                <option>  Cable Preacher Curl (x3)</option>
                                <option>  Cable Preacher Curl (x4)</option>
                                <option>  Close-Grip EZ Bar Curl (x3)</option>
                                <option>  Close-Grip EZ Bar Curl (x4)</option>
                                <option>  Concentration Curls (x3)</option>
                                <option>  Concentration Curls (x4)</option>
                                <option> ----- </option>
                                <option> Ankle Circles (x3)</option>
                                <option> Ankle Circles (x4)</option>
                                <option>  Balance Board (x3)</option>
                                <option>  Balance Board (x4)</option>
                                <option>  Calf Press (x3)</option>
                                <option>  Calf Press (x4)</option>
                                <option>  Calf Raise On A Dumbbell (x3)</option>
                                <option>  Calf Raise On A Dumbbell (x4)</option>
                                <option>  Calf Raises - With Bands (x3)</option>
                                <option>  Calf Raises - With Bands (x4)</option>
                                <option> Calves-SMR (x3)</option>
                                <option> Calves-SMR (x4)</option>
                                <option> ----- </option>
                                <option> Butterfly (x3)</option>
                                <option> Butterfly (x4)</option>
                                <option>  Barbell Bench Press - Medium Grip (x3)</option>
                                <option>  Barbell Bench Press - Medium Grip (x4)</option>
                                <option>  Barbell Guillotine Bench Press (x3)</option>
                                <option>  Barbell Guillotine Bench Press (x4)</option>
                                <option>  Behind Head Chest Stretch (x3)</option>
                                <option>  Behind Head Chest Stretch (x4)</option>
                                <option>  Chain Press (x3)</option>
                                <option>  Chain Press (x4)</option>
                                <option>  Chest Push (x3)</option>
                                <option>  Chest Push (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Wrist Curl (x3)</option>
                                <option>  Cable Wrist Curl (x4)</option>
                                <option>  Farmer's Walk (x3)</option>
                                <option>  Farmer's Walk (x4)</option>
                                <option>  Rickshaw Carry (x3)</option>
                                <option>  Rickshaw Carry (x4)</option>
                                <option>  Plate Pinch (x3)</option>
                                <option>  Plate Pinch (x4)</option>
                                <option>  Wrist Roller (x3)</option>
                                <option>  Wrist Roller (x4)</option>
                                <option>  Wrist Rotations with Bar (x3)</option>
                                <option>  Wrist Rotations with Bar (x4)</option>
                                <option> ----- </option>
                                <option>  Barbell Hip Thrust (x3)</option>
                                <option>  Barbell Hip Thrust (x4)</option>
                                <option>  Barbell Glute Bridge (x3)</option>
                                <option>  Barbell Glute Bridge (x4)</option>
                                <option>  Butt Lift (x3)</option>
                                <option>  Butt Lift (x4)</option>
                                <option>  Flutter Kicks (x3)</option>
                                <option>  Flutter Kicks (x4)</option>
                                <option>  Leg Lift (x3)</option>
                                <option>  Leg Lift (x4)</option>
                                <option>  Lying Glute (x3)</option>
                                <option>  Lying Glute (x4)</option>
                                <option> ----- </option>
                                <option> 90/90 Hamstring (x3)</option>
                                <option> 90/90 Hamstring (x4)</option>
                                <option>  Ball Leg Curl (x3)</option>
                                <option>  Ball Leg Curl (x4)</option>
                                <option>  Box Skip (x3)</option>
                                <option>  Box Skip (x4)</option>
                                <option>  Clean (x3)</option>
                                <option>  Clean (x4)</option>
                                <option>  Squats (x3)</option>
                                <option>  Squats (x4)</option>
                                <option>  Power Stairs (x3)</option>
                                <option>  Power Stairs (x4)</option>
                                <option> ----- </option>
                                <option>  Chin-Up (x3)</option>
                                <option>  Chin-Up (x4)</option>
                                <option>  Dynamic Back Stretch (x3)</option>
                                <option>  Dynamic Back Stretch (x4)</option>
                                <option>  Elevated Cable Rows (x3)</option>
                                <option>  Elevated Cable Rows (x4)</option>
                                <option>  Kipping Muscle Up (x3)</option>
                                <option>  Kipping Muscle Up (x4)</option>
                                <option>  Latissimus Dorsi-SMR (x3)</option>
                                <option>  Latissimus Dorsi-SMR (x4)</option>
                                <option>  London Bridges (x3)</option>
                                <option>  London Bridges (x4)</option>
                                <option> ----- </option>
                                <option>  Atlas Stones  (x3)</option>
                                <option>  Atlas Stones  (x4)</option>
                                <option> Axle Deadlift  (x3)</option>
                                <option> Axle Deadlift  (x4)</option>
                                <option> Barbell Deadlift  (x3)</option>
                                <option> Barbell Deadlift  (x4)</option>
                                <option> Deadlift  (x3)</option>
                                <option> Deadlift  (x4)</option>
                                <option> Cat Stretch  (x3)</option>
                                <option> Cat Stretch  (x4)</option>
                                <option>  Child's Pose  (x3)</option>
                                <option>  Child's Pose  (x4)</option>
                                <option> ----- </option>
                                <option>  Bent Over Barbell Row  (x3)</option>
                                <option>  Bent Over Barbell Row  (x4)</option>
                                <option>  Bodyweight Mid Row  (x3)</option>
                                <option>  Bodyweight Mid Row  (x4)</option>
                                <option>  Lying T-Bar Row  (x3)</option>
                                <option>  Lying T-Bar Row  (x4)</option>
                                <option>  Inverted Row  (x3)</option>
                                <option>  Inverted Row  (x4)</option>
                                <option>  One-Arm Long Bar Row  (x3)</option>
                                <option>  One-Arm Long Bar Row  (x4)</option>
                                <option>  One-Arm Kettlebell Row (x3)</option>
                                <option>  One-Arm Kettlebell Row (x4)</option>
                                <option> ----- </option>
                                <option> Side Neck Stretch (x3)</option>
                                <option> Side Neck Stretch (x4)</option>
                                <option>  Neck-SMR (x3)</option>
                                <option>  Neck-SMR (x4)</option>
                                <option>  Isometric Neck Exercise (x3)</option>
                                <option>  Isometric Neck Exercise (x4)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Down Plate Neck Resistance (x4)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option>  Lying Face Up Plate Neck Resistance (x3)</option>
                                <option> ----- </option>
                                <option>  Backward Drag (x3)</option>
                                <option>  Backward Drag (x4)</option>
                                <option>  Barbell Full Squat (x3)</option>
                                <option>  Barbell Full Squat (x4)</option>
                                <option>  Barbell Hack Squat (x3)</option>
                                <option>  Barbell Hack Squat (x4)</option>
                                <option>  Barbell Lunge (x3)</option>
                                <option>  Barbell Lunge (x4)</option>
                                <option>  Box Squat (x3)</option>
                                <option>  Box Squat (x4)</option>
                                <option>  Cable Deadlifts (x3)</option>
                                <option>  Cable Deadlifts (x4)</option>
                                <option> ----- </option>
                                <option>   Alternating Deltoid Raise (x3)</option>
                                <option>   Alternating Deltoid Raise (x4)</option>
                                <option>   Anti-Gravity Press (x3)</option>
                                <option>   Anti-Gravity Press (x4)</option>
                                <option>  Arm Circles (x3)</option>
                                <option>  Arm Circles (x4)</option>
                                <option>  Battling Ropes (x3)</option>
                                <option>  Battling Ropes (x4)</option>
                                <option> Clean and Press (x3)</option>
                                <option> Clean and Press (x4)</option>
                                <option> Double Kettlebell Jerk (x3)</option>
                                <option> Double Kettlebell Jerk (x4)</option>
                                <option> ----- </option>
                                <option>  Cable Shrugs  (x3)</option>
                                <option>  Cable Shrugs  (x4)</option>
                                <option>  Scapular Pull-Up (x3)</option>
                                <option>  Scapular Pull-Up (x4)</option>
                                <option>  Smith Machine Shrug (x3)</option>
                                <option>  Smith Machine Shrug (x4)</option>
                                <option>  Snatch Shrug (x3)</option>
                                <option>  Snatch Shrug (x4)</option>
                                <option>  Upright Cable Row (x3)</option>
                                <option>  Upright Cable Row (x4)</option>
                                <option>  Upright Row - With Bands (x3)</option>
                                <option>  Upright Row - With Bands (x4)</option>
                                <option> ----- </option>
                                <option>Bench Dips (x3)</option>
                                <option>Bench Dips (x4)</option>
                                <option>  Board Press (x3)</option>
                                <option>  Board Press (x4)</option>
                                <option> Body-Up (x3)</option>
                                <option> Body-Up (x4)</option>
                                <option>  Chain Handle Extension (x3)</option>
                                <option>  Chain Handle Extension (x4)</option>
                                <option>  Dips - Triceps Version (x3)</option>
                                <option>  Dips - Triceps Version (x4)</option>
                                <option>  JM Press (x3)</option>
                                <option>  JM Press (x4)</option>

                            </select>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="hidden" name="option" value="createMonday"/>
                            <input type="submit" name="button" id="button" value="Create"  class="btn btn-primary pull-right"/>

                        </div>
                    </div>
                </form>


            </div>



            <div class="col-md-12 gap10"></div>
        </div>

        <%-- end main container --%>           
        <%@ include file="include/footer.jsp" %>

