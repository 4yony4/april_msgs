
## Contact info @ IIT: 
[Sara Nataletti](mailto:Sara.Nataletti@iit.it)

[Giulia Belgiovine](mailto:Giulia.Belgiovine@iit.it)

[Jonathan Bar-Magen Numhauser](mailto:jonathan.barmagen@iit.it)

[Francesco Rea](mailto:Francesco.Rea@iit.it)

## ------------------------------- input to SIM ------------------------------


from PEM: SIMSEMEnvironment.msg (including SIMSEMPhysicalObject)

from ISIM: SIMHumanSight.msg

from PIM: SIMRobotArm.msg (including SIMRobotArmKinematic), SIMRobotHand.msg (including SIMRobotHandKinematic.msg) (both refering to the robot), SIMTactile.msg

from other software: SIMFatigueAnalysis.msg, SIMSEMHumanBehaviour (including SIMSEMHumanGraspingStrategies.msg), SIMRobotGraspingStrategies

## ------------------------------- output from SIM ------------------------------

to HICEM: SIMSEMRobotHighLatencyCorrections.msg, SIMHumanParameterIntention (including SIMSEMHumanMotion), SIMHumanHandGesture.msg




## ------------------------------- input to SEM ------------------------------


from PEM: SIMSEMEnvironment.msg (including SIMSEMPhysicalObject)

from ISIM: SEMEmergency.msg

from LOCEM: SEMEmergencyRequestStatus.msg

from other software: SIMSEMHumanMotion.msg, SIMSEMHumanBehaviour.msg (including SIMSEMHumanGraspingStrategies.msg), SEMNeuromorphicSensing.msg

## ------------------------------- output from SEM ------------------------------

to HICEM: SIMSEMRobotHighLatencyCorrections.msg

to LOCEM: SEMRobotLowLatencyCorrections.msg
