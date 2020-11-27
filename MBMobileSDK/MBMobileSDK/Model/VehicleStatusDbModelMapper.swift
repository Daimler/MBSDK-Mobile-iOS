//
//  Copyright © 2020 MBition GmbH. All rights reserved.
//

import Foundation
import MBRealmKit

class VehicleStatusDbModelMapper: ExtendedDbModelMapping {
	
	typealias BusinessModel = VehicleStatusModel
	typealias DbModel = DBVehicleStatusModel
	
	func map(_ dbModel: DBVehicleStatusModel) -> VehicleStatusModel {
		return VehicleStatusModel(auxheat: self.map(dbVehicleStatusModel: dbModel),
								  doors: self.map(dbVehicleStatusModel: dbModel),
								  drivingMode: self.map(dbVehicleStatusModel: dbModel),
								  ecoScore: self.map(dbVehicleStatusModel: dbModel),
								  engine: self.map(dbVehicleStatusModel: dbModel),
								  eventTimestamp: self.map(int64Value: dbModel.eventTimestamp.value),
								  finOrVin: dbModel.finOrVin,
								  hu: self.map(dbVehicleStatusModel: dbModel),
								  location: self.map(dbVehicleStatusModel: dbModel),
								  statistics: self.map(dbVehicleStatusModel: dbModel),
								  tank: self.map(dbVehicleStatusModel: dbModel),
								  theft: self.map(dbVehicleStatusModel: dbModel),
								  tires: self.map(dbVehicleStatusModel: dbModel),
								  vehicle: self.map(dbVehicleStatusModel: dbModel),
								  warnings: self.map(dbVehicleStatusModel: dbModel),
								  windows: self.map(dbVehicleStatusModel: dbModel),
								  zev: self.map(dbVehicleStatusModel: dbModel))
	}
	
	func map(_ businessModel: VehicleStatusModel) -> DBVehicleStatusModel {
		
		let dbModel = DBVehicleStatusModel()
		dbModel.finOrVin = businessModel.finOrVin
		return self.map(businessModel, existing: dbModel)
	}
	
	// swiftlint:disable function_body_length
	func map(_ businessModel: VehicleStatusModel, existing dbModel: DBVehicleStatusModel) -> DBVehicleStatusModel {
		
		dbModel.acChargingCurrentLimitation					   = self.map(statusAttribute: businessModel.zev.acChargingCurrentLimitation, dbModel: dbModel.acChargingCurrentLimitation)
		dbModel.auxheatActive                                  = self.map(statusAttribute: businessModel.auxheat.isActive, dbModel: dbModel.auxheatActive)
		dbModel.auxheatRuntime                                 = self.map(statusAttribute: businessModel.auxheat.runtime, dbModel: dbModel.auxheatRuntime)
		dbModel.auxheatState                                   = self.map(statusAttribute: businessModel.auxheat.state, dbModel: dbModel.auxheatState)
		dbModel.auxheatTime1                                   = self.map(statusAttribute: businessModel.auxheat.time1, dbModel: dbModel.auxheatTime1)
		dbModel.auxheatTime2                                   = self.map(statusAttribute: businessModel.auxheat.time2, dbModel: dbModel.auxheatTime2)
		dbModel.auxheatTime3                                   = self.map(statusAttribute: businessModel.auxheat.time3, dbModel: dbModel.auxheatTime3)
		dbModel.auxheatTimeSelection                           = self.map(statusAttribute: businessModel.auxheat.timeSelection, dbModel: dbModel.auxheatTimeSelection)
		dbModel.auxheatWarnings                                = self.map(statusAttribute: businessModel.auxheat.warnings, dbModel: dbModel.auxheatWarnings)
		dbModel.averageSpeedReset                              = self.map(statusAttribute: businessModel.statistics.averageSpeed.reset, dbModel: dbModel.averageSpeedReset)
		dbModel.averageSpeedStart                              = self.map(statusAttribute: businessModel.statistics.averageSpeed.start, dbModel: dbModel.averageSpeedStart)
		dbModel.bidirectionalChargingActive					   = self.map(statusAttribute: businessModel.zev.bidirectionalChargingActive, dbModel: dbModel.bidirectionalChargingActive)
		dbModel.chargeCouplerACLockStatus					   = self.map(statusAttribute: businessModel.zev.chargeCouplerACLockStatus, dbModel: dbModel.chargeCouplerACLockStatus)
		dbModel.chargeCouplerACStatus						   = self.map(statusAttribute: businessModel.zev.chargeCouplerACStatus, dbModel: dbModel.chargeCouplerACStatus)
		dbModel.chargeCouplerDCLockStatus					   = self.map(statusAttribute: businessModel.zev.chargeCouplerDCLockStatus, dbModel: dbModel.chargeCouplerDCLockStatus)
		dbModel.chargeCouplerDCStatus						   = self.map(statusAttribute: businessModel.zev.chargeCouplerDCStatus, dbModel: dbModel.chargeCouplerDCStatus)
		dbModel.chargeFlapACStatus							   = self.map(statusAttribute: businessModel.zev.chargeFlapACStatus, dbModel: dbModel.chargeFlapACStatus)
		dbModel.chargeFlapDCStatus							   = self.map(statusAttribute: businessModel.zev.chargeFlapDCStatus, dbModel: dbModel.chargeFlapDCStatus)
		dbModel.chargePrograms                                 = self.map(statusAttribute: businessModel.zev.chargePrograms, dbModel: dbModel.chargePrograms)
		dbModel.chargingActive                                 = self.map(statusAttribute: businessModel.zev.chargingActive, dbModel: dbModel.chargingActive)
		dbModel.chargingBreakClockTimer                        = self.map(statusAttribute: businessModel.zev.chargingBreakClockTimer, dbModel: dbModel.chargingBreakClockTimer)
		dbModel.chargingError                                  = self.map(statusAttribute: businessModel.zev.chargingError, dbModel: dbModel.chargingError)
		dbModel.chargingErrorInfrastructure					   = self.map(statusAttribute: businessModel.zev.chargingErrorInfrastructure, dbModel: dbModel.chargingErrorInfrastructure)
		dbModel.chargingErrorWim							   = self.map(statusAttribute: businessModel.zev.chargingErrorWim, dbModel: dbModel.chargingErrorWim)
		dbModel.chargingMode                                   = self.map(statusAttribute: businessModel.zev.chargingMode, dbModel: dbModel.chargingMode)
		dbModel.chargingPower                                  = self.map(statusAttribute: businessModel.zev.chargingPower, dbModel: dbModel.chargingPower)
		dbModel.chargingPowerControl                           = self.map(statusAttribute: businessModel.zev.chargingPowerControl, dbModel: dbModel.chargingPowerControl)
		dbModel.chargingPowerEcoLimit						   = self.map(statusAttribute: businessModel.zev.chargingPowerEcoLimit, dbModel: dbModel.chargingPowerEcoLimit)
		dbModel.chargingStatus                                 = self.map(statusAttribute: businessModel.zev.chargingStatus, dbModel: dbModel.chargingStatus)
		dbModel.chargingTimeType							   = self.map(statusAttribute: businessModel.zev.chargingTimeType, dbModel: dbModel.chargingTimeType)
		dbModel.decklidLockState                               = self.map(statusAttribute: businessModel.doors.decklid.lockState, dbModel: dbModel.decklidLockState)
		dbModel.decklidStatus                                  = self.map(statusAttribute: businessModel.doors.decklid.state, dbModel: dbModel.decklidStatus)
		dbModel.departureTime                                  = self.map(statusAttribute: businessModel.zev.departureTime, dbModel: dbModel.departureTime)
		dbModel.departureTimeIcon							   = self.map(statusAttribute: businessModel.zev.departureTimeIcon, dbModel: dbModel.departureTimeIcon)
		dbModel.departureTimeMode                              = self.map(statusAttribute: businessModel.zev.departureTimeMode, dbModel: dbModel.departureTimeMode)
		dbModel.departureTimeSoc                               = self.map(statusAttribute: businessModel.zev.departureTimeSoc, dbModel: dbModel.departureTimeSoc)
		dbModel.departureTimeWeekday                           = self.map(statusAttribute: businessModel.zev.departureTimeWeekday, dbModel: dbModel.departureTimeWeekday)
		dbModel.distanceElectricalReset                        = self.map(statusAttribute: businessModel.statistics.electric.distance.reset, dbModel: dbModel.distanceElectricalReset)
		dbModel.distanceElectricalStart                        = self.map(statusAttribute: businessModel.statistics.electric.distance.start, dbModel: dbModel.distanceElectricalStart)
		dbModel.distanceGasReset                               = self.map(statusAttribute: businessModel.statistics.gas.distance.reset, dbModel: dbModel.distanceGasReset)
		dbModel.distanceGasStart                               = self.map(statusAttribute: businessModel.statistics.gas.distance.start, dbModel: dbModel.distanceGasStart)
		dbModel.distanceReset                                  = self.map(statusAttribute: businessModel.statistics.distance.reset, dbModel: dbModel.distanceReset)
		dbModel.distanceStart                                  = self.map(statusAttribute: businessModel.statistics.distance.start, dbModel: dbModel.distanceStart)
		dbModel.distanceZEReset                                = self.map(statusAttribute: businessModel.statistics.distance.ze.reset, dbModel: dbModel.distanceZEReset)
		dbModel.distanceZEStart                                = self.map(statusAttribute: businessModel.statistics.distance.ze.start, dbModel: dbModel.distanceZEStart)
		dbModel.doorFrontLeftLockState                         = self.map(statusAttribute: businessModel.doors.frontLeft.lockState, dbModel: dbModel.doorFrontLeftLockState)
		dbModel.doorFrontLeftState                             = self.map(statusAttribute: businessModel.doors.frontLeft.state, dbModel: dbModel.doorFrontLeftState)
		dbModel.doorFrontRightLockState                        = self.map(statusAttribute: businessModel.doors.frontRight.lockState, dbModel: dbModel.doorFrontRightLockState)
		dbModel.doorFrontRightState                            = self.map(statusAttribute: businessModel.doors.frontRight.state, dbModel: dbModel.doorFrontRightState)
		dbModel.doorLockStatusGas                              = self.map(statusAttribute: businessModel.vehicle.lockGasState, dbModel: dbModel.doorLockStatusGas)
		dbModel.doorLockStatusOverall                          = self.map(statusAttribute: businessModel.doors.lockStatusOverall, dbModel: dbModel.doorLockStatusOverall)
		dbModel.doorRearLeftLockState                          = self.map(statusAttribute: businessModel.doors.rearLeft.lockState, dbModel: dbModel.doorRearLeftLockState)
		dbModel.doorRearLeftState                              = self.map(statusAttribute: businessModel.doors.rearLeft.state, dbModel: dbModel.doorRearLeftState)
		dbModel.doorRearRightLockState                         = self.map(statusAttribute: businessModel.doors.rearRight.lockState, dbModel: dbModel.doorRearRightLockState)
		dbModel.doorRearRightState                             = self.map(statusAttribute: businessModel.doors.rearRight.state, dbModel: dbModel.doorRearRightState)
		dbModel.doorStatusOverall                              = self.map(statusAttribute: businessModel.doors.statusOverall, dbModel: dbModel.doorStatusOverall)
		dbModel.drivenTimeReset                                = self.map(statusAttribute: businessModel.statistics.drivenTime.reset, dbModel: dbModel.drivenTimeReset)
		dbModel.drivenTimeStart                                = self.map(statusAttribute: businessModel.statistics.drivenTime.start, dbModel: dbModel.drivenTimeStart)
		dbModel.drivenTimeZEReset                              = self.map(statusAttribute: businessModel.statistics.drivenTime.ze.reset, dbModel: dbModel.drivenTimeZEReset)
		dbModel.drivenTimeZEStart                              = self.map(statusAttribute: businessModel.statistics.drivenTime.ze.start, dbModel: dbModel.drivenTimeZEStart)
		dbModel.ecoScoreAccel                                  = self.map(statusAttribute: businessModel.ecoScore.accel, dbModel: dbModel.ecoScoreAccel)
		dbModel.ecoScoreBonusRange                             = self.map(statusAttribute: businessModel.ecoScore.bonusRange, dbModel: dbModel.ecoScoreBonusRange)
		dbModel.ecoScoreConst                                  = self.map(statusAttribute: businessModel.ecoScore.const, dbModel: dbModel.ecoScoreConst)
		dbModel.ecoScoreFreeWhl                                = self.map(statusAttribute: businessModel.ecoScore.freeWhl, dbModel: dbModel.ecoScoreFreeWhl)
		dbModel.ecoScoreTotal                                  = self.map(statusAttribute: businessModel.ecoScore.total, dbModel: dbModel.ecoScoreTotal)
		dbModel.electricConsumptionReset                       = self.map(statusAttribute: businessModel.statistics.electric.consumption.reset, dbModel: dbModel.electricConsumptionReset)
		dbModel.electricConsumptionStart                       = self.map(statusAttribute: businessModel.statistics.electric.consumption.start, dbModel: dbModel.electricConsumptionStart)
		dbModel.electricalRangeSkipIndication                  = self.map(statusAttribute: businessModel.warnings.electricalRangeSkipIndication, dbModel: dbModel.electricalRangeSkipIndication)
		dbModel.endOfChargeTime                                = self.map(statusAttribute: businessModel.zev.endOfChargeTime, dbModel: dbModel.endOfChargeTime)
		dbModel.endOfChargeTimeRelative                        = self.map(statusAttribute: businessModel.zev.endOfChargeTimeRelative, dbModel: dbModel.endOfChargeTimeRelative)
		dbModel.endOfChargeTimeWeekday                         = self.map(statusAttribute: businessModel.zev.endOfChargeTimeWeekday, dbModel: dbModel.endOfChargeTimeWeekday)
		dbModel.engineHoodStatus                               = self.map(statusAttribute: businessModel.vehicle.engineHoodStatus, dbModel: dbModel.engineHoodStatus)
		dbModel.engineState                                    = self.map(statusAttribute: businessModel.engine.state, dbModel: dbModel.engineState)
		dbModel.eventTimestamp.value                           = businessModel.eventTimestamp
		dbModel.evRangeAssistDriveOnSoc                        = self.map(statusAttribute: businessModel.zev.rangeAssistDriveOnSoc, dbModel: dbModel.evRangeAssistDriveOnSoc)
		dbModel.evRangeAssistDriveOnTime                       = self.map(statusAttribute: businessModel.zev.rangeAssistDriveOnTime, dbModel: dbModel.evRangeAssistDriveOnTime)
		dbModel.filterParticleLoading                          = self.map(statusAttribute: businessModel.vehicle.filterParticaleState, dbModel: dbModel.filterParticleLoading)
		dbModel.flipWindowStatus                               = self.map(statusAttribute: businessModel.windows.flipWindowStatus, dbModel: dbModel.flipWindowStatus)
		dbModel.gasConsumptionReset                            = self.map(statusAttribute: businessModel.statistics.gas.consumption.reset, dbModel: dbModel.gasConsumptionReset)
		dbModel.gasConsumptionStart                            = self.map(statusAttribute: businessModel.statistics.gas.consumption.start, dbModel: dbModel.gasConsumptionStart)
		dbModel.hybridWarnings                                 = self.map(statusAttribute: businessModel.zev.hybridWarnings, dbModel: dbModel.hybridWarnings)
		dbModel.ignitionState                                  = self.map(statusAttribute: businessModel.engine.ignitionState, dbModel: dbModel.ignitionState)
		dbModel.interiorProtectionSensorStatus                 = self.map(statusAttribute: businessModel.theft.interiorProtectionSensorStatus, dbModel: dbModel.interiorProtectionSensorStatus)
		dbModel.keyActivationState                             = self.map(statusAttribute: businessModel.theft.keyActivationState, dbModel: dbModel.keyActivationState)
		dbModel.languageHU                                     = self.map(statusAttribute: businessModel.hu.language, dbModel: dbModel.languageHU)
		dbModel.lastParkEvent                                  = self.map(statusAttribute: businessModel.theft.collision.lastParkEvent, dbModel: dbModel.lastParkEvent)
		dbModel.lastParkEventNotConfirmed                      = self.map(statusAttribute: businessModel.theft.collision.lastParkEventNotConfirmed, dbModel: dbModel.lastParkEventNotConfirmed)
		dbModel.lastTheftWarning                               = self.map(statusAttribute: businessModel.theft.lastTheftWarning, dbModel: dbModel.lastTheftWarning)
		dbModel.lastTheftWarningReason                         = self.map(statusAttribute: businessModel.theft.lastTheftWarningReason, dbModel: dbModel.lastTheftWarningReason)
		dbModel.liquidConsumptionReset                         = self.map(statusAttribute: businessModel.statistics.liquid.consumption.reset, dbModel: dbModel.liquidConsumptionReset)
		dbModel.liquidConsumptionStart                         = self.map(statusAttribute: businessModel.statistics.liquid.consumption.start, dbModel: dbModel.liquidConsumptionStart)
		dbModel.liquidRangeSkipIndication                      = self.map(statusAttribute: businessModel.warnings.liquidRangeSkipIndication, dbModel: dbModel.liquidRangeSkipIndication)
		dbModel.odo                                            = self.map(statusAttribute: businessModel.vehicle.odo, dbModel: dbModel.odo)
		dbModel.maxRange                                       = self.map(statusAttribute: businessModel.zev.maxRange, dbModel: dbModel.maxRange)
		dbModel.maxSoc                                         = self.map(statusAttribute: businessModel.zev.maxSoc, dbModel: dbModel.maxSoc)
		dbModel.maxSocLowerLimit                               = self.map(statusAttribute: businessModel.zev.maxSocLowerLimit, dbModel: dbModel.maxSocLowerLimit)
		dbModel.maxSocUpperLimit							   = self.map(statusAttribute: businessModel.zev.maxSocUpperLimit, dbModel: dbModel.maxSocUpperLimit)
		dbModel.minSoc										   = self.map(statusAttribute: businessModel.zev.minSoc, dbModel: dbModel.minSoc)
		dbModel.minSocLowerLimit							   = self.map(statusAttribute: businessModel.zev.minSocLowerLimit, dbModel: dbModel.minSocLowerLimit)
		dbModel.minSocUpperLimit							   = self.map(statusAttribute: businessModel.zev.minSocUpperLimit, dbModel: dbModel.minSocUpperLimit)
		dbModel.nextDepartureTime							   = self.map(statusAttribute: businessModel.zev.nextDepartureTime, dbModel: dbModel.nextDepartureTime)
		dbModel.nextDepartureTimeWeekday					   = self.map(statusAttribute: businessModel.zev.nextDepartureTimeWeekday, dbModel: dbModel.nextDepartureTimeWeekday)
		dbModel.parkBrakeStatus                                = self.map(statusAttribute: businessModel.vehicle.parkBrakeStatus, dbModel: dbModel.parkBrakeStatus)
		dbModel.parkEventLevel                                 = self.map(statusAttribute: businessModel.theft.collision.parkEventLevel, dbModel: dbModel.parkEventLevel)
		dbModel.parkEventSensorStatus                          = self.map(statusAttribute: businessModel.theft.collision.parkEventSensorStatus, dbModel: dbModel.parkEventSensorStatus)
		dbModel.parkEventType                                  = self.map(statusAttribute: businessModel.theft.collision.parkEventType, dbModel: dbModel.parkEventType)
		dbModel.positionErrorCode                              = self.map(statusAttribute: businessModel.location.positionErrorCode, dbModel: dbModel.positionErrorCode)
		dbModel.positionHeading                                = self.map(statusAttribute: businessModel.location.heading, dbModel: dbModel.positionHeading)
		dbModel.positionLat                                    = self.map(statusAttribute: businessModel.location.latitude, dbModel: dbModel.positionLat)
		dbModel.positionLong                                   = self.map(statusAttribute: businessModel.location.longitude, dbModel: dbModel.positionLong)
		dbModel.precondActive                                  = self.map(statusAttribute: businessModel.zev.precondActive, dbModel: dbModel.precondActive)
		dbModel.precondAtDeparture                             = self.map(statusAttribute: businessModel.zev.precondAtDeparture, dbModel: dbModel.precondAtDeparture)
		dbModel.precondAtDepartureDisable                      = self.map(statusAttribute: businessModel.zev.precondAtDepartureDisable, dbModel: dbModel.precondAtDepartureDisable)
		dbModel.precondDuration                                = self.map(statusAttribute: businessModel.zev.precondDuration, dbModel: dbModel.precondDuration)
		dbModel.precondError                                   = self.map(statusAttribute: businessModel.zev.precondError, dbModel: dbModel.precondError)
		dbModel.precondNow                                     = self.map(statusAttribute: businessModel.zev.precondNow, dbModel: dbModel.precondNow)
		dbModel.precondNowError                                = self.map(statusAttribute: businessModel.zev.precondNowError, dbModel: dbModel.precondNowError)
		dbModel.precondSeatFrontLeft                           = self.map(statusAttribute: businessModel.zev.precondSeatFrontLeft, dbModel: dbModel.precondSeatFrontLeft)
		dbModel.precondSeatFrontRight                          = self.map(statusAttribute: businessModel.zev.precondSeatFrontRight, dbModel: dbModel.precondSeatFrontRight)
		dbModel.precondSeatRearLeft                            = self.map(statusAttribute: businessModel.zev.precondSeatRearLeft, dbModel: dbModel.precondSeatRearLeft)
		dbModel.precondSeatRearRight                           = self.map(statusAttribute: businessModel.zev.precondSeatRearRight, dbModel: dbModel.precondSeatRearRight)
		dbModel.proximityCalculationForVehiclePositionRequired = self.map(statusAttribute: businessModel.location.proximityCalculationForVehiclePositionRequired, dbModel: dbModel.proximityCalculationForVehiclePositionRequired)
		dbModel.remoteStartActive                              = self.map(statusAttribute: businessModel.engine.remoteStartIsActive, dbModel: dbModel.remoteStartActive)
		dbModel.remoteStartEndtime                             = self.map(statusAttribute: businessModel.engine.remoteStartEndtime, dbModel: dbModel.remoteStartEndtime)
		dbModel.remoteStartTemperature                         = self.map(statusAttribute: businessModel.engine.remoteStartTemperature, dbModel: dbModel.remoteStartTemperature)
		dbModel.roofTopStatus                                  = self.map(statusAttribute: businessModel.vehicle.roofTopState, dbModel: dbModel.roofTopStatus)
		dbModel.selectedChargeProgram                          = self.map(statusAttribute: businessModel.zev.selectedChargeProgram, dbModel: dbModel.selectedChargeProgram)
		dbModel.serviceIntervalDays                            = self.map(statusAttribute: businessModel.vehicle.serviceIntervalDays, dbModel: dbModel.serviceIntervalDays)
		dbModel.serviceIntervalDistance                        = self.map(statusAttribute: businessModel.vehicle.serviceIntervalDistance, dbModel: dbModel.serviceIntervalDistance)
		dbModel.smartCharging                                  = self.map(statusAttribute: businessModel.zev.smartCharging, dbModel: dbModel.smartCharging)
		dbModel.smartChargingAtDeparture                       = self.map(statusAttribute: businessModel.zev.smartChargingAtDeparture, dbModel: dbModel.smartChargingAtDeparture)
		dbModel.smartChargingAtDeparture2                      = self.map(statusAttribute: businessModel.zev.smartChargingAtDeparture2, dbModel: dbModel.smartChargingAtDeparture2)
		dbModel.soc                                            = self.map(statusAttribute: businessModel.vehicle.soc, dbModel: dbModel.soc)
		dbModel.socProfile                                     = self.map(statusAttribute: businessModel.zev.socProfile, dbModel: dbModel.socProfile)
		dbModel.speedAlert                                     = self.map(statusAttribute: businessModel.vehicle.speedAlert, dbModel: dbModel.speedAlert)
		dbModel.speedUnitFromIC                                = self.map(statusAttribute: businessModel.vehicle.speedUnitFromIC, dbModel: dbModel.speedUnitFromIC)
		dbModel.starterBatteryState                            = self.map(statusAttribute: businessModel.vehicle.starterBatteryState, dbModel: dbModel.starterBatteryState)
		dbModel.sunroofEventState                              = self.map(statusAttribute: businessModel.windows.sunroof.event, dbModel: dbModel.sunroofEventState)
		dbModel.sunroofEventActive                             = self.map(statusAttribute: businessModel.windows.sunroof.isEventActive, dbModel: dbModel.sunroofEventActive)
		dbModel.sunroofState                                   = self.map(statusAttribute: businessModel.windows.sunroof.status, dbModel: dbModel.sunroofState)
		dbModel.sunroofBlindFrontStatus                        = self.map(statusAttribute: businessModel.windows.sunroof.blindFront, dbModel: dbModel.sunroofBlindFrontStatus)
		dbModel.sunroofBlindRearStatus                         = self.map(statusAttribute: businessModel.windows.sunroof.blindRear, dbModel: dbModel.sunroofBlindRearStatus)
		dbModel.tankAdBlueLevel                                = self.map(statusAttribute: businessModel.tank.adBlueLevel, dbModel: dbModel.tankAdBlueLevel)
		dbModel.tankElectricRange                              = self.map(statusAttribute: businessModel.tank.electricRange, dbModel: dbModel.tankElectricRange)
		dbModel.tankGasLevel                                   = self.map(statusAttribute: businessModel.tank.gasLevel, dbModel: dbModel.tankGasLevel)
		dbModel.tankGasRange                                   = self.map(statusAttribute: businessModel.tank.gasRange, dbModel: dbModel.tankGasRange)
		dbModel.tankLiquidLevel                                = self.map(statusAttribute: businessModel.tank.liquidLevel, dbModel: dbModel.tankLiquidLevel)
		dbModel.tankLiquidRange                                = self.map(statusAttribute: businessModel.tank.liquidRange, dbModel: dbModel.tankLiquidRange)
		dbModel.tankOverallRange                               = self.map(statusAttribute: businessModel.tank.overallRange, dbModel: dbModel.tankOverallRange)
		dbModel.teenageDrivingMode                             = self.map(statusAttribute: businessModel.drivingMode.teenage, dbModel: dbModel.teenageDrivingMode)
		dbModel.temperaturePointFrontCenter                    = self.map(statusAttribute: businessModel.zev.temperature.frontCenter, dbModel: dbModel.temperaturePointFrontCenter)
		dbModel.temperaturePointFrontLeft                      = self.map(statusAttribute: businessModel.zev.temperature.frontLeft, dbModel: dbModel.temperaturePointFrontLeft)
		dbModel.temperaturePointFrontRight                     = self.map(statusAttribute: businessModel.zev.temperature.frontRight, dbModel: dbModel.temperaturePointFrontRight)
		dbModel.temperaturePointRearCenter                     = self.map(statusAttribute: businessModel.zev.temperature.rearCenter, dbModel: dbModel.temperaturePointRearCenter)
		dbModel.temperaturePointRearCenter2                    = self.map(statusAttribute: businessModel.zev.temperature.rearCenter2, dbModel: dbModel.temperaturePointRearCenter2)
		dbModel.temperaturePointRearLeft                       = self.map(statusAttribute: businessModel.zev.temperature.rearLeft, dbModel: dbModel.temperaturePointRearLeft)
		dbModel.temperaturePointRearRight                      = self.map(statusAttribute: businessModel.zev.temperature.rearRight, dbModel: dbModel.temperaturePointRearRight)
		dbModel.temperatureUnitHU                              = self.map(statusAttribute: businessModel.hu.temperatureType, dbModel: dbModel.temperatureUnitHU)
		dbModel.theftAlarmActive                               = self.map(statusAttribute: businessModel.theft.theftAlarmActive, dbModel: dbModel.theftAlarmActive)
		dbModel.theftSystemArmed                               = self.map(statusAttribute: businessModel.theft.theftSystemArmed, dbModel: dbModel.theftSystemArmed)
		dbModel.timeFormatHU                                   = self.map(statusAttribute: businessModel.hu.timeFormatType, dbModel: dbModel.timeFormatHU)
		dbModel.tireMarkerFrontLeft                            = self.map(statusAttribute: businessModel.tires.frontLeft.warningLevel, dbModel: dbModel.tireMarkerFrontLeft)
		dbModel.tireMarkerFrontRight                           = self.map(statusAttribute: businessModel.tires.frontRight.warningLevel, dbModel: dbModel.tireMarkerFrontRight)
		dbModel.tireMarkerRearLeft                             = self.map(statusAttribute: businessModel.tires.rearLeft.warningLevel, dbModel: dbModel.tireMarkerRearLeft)
		dbModel.tireMarkerRearRight                            = self.map(statusAttribute: businessModel.tires.rearRight.warningLevel, dbModel: dbModel.tireMarkerRearRight)
		dbModel.tirePressureFrontLeft                          = self.map(statusAttribute: businessModel.tires.frontLeft.pressure, dbModel: dbModel.tirePressureFrontLeft)
		dbModel.tirePressureFrontRight                         = self.map(statusAttribute: businessModel.tires.frontRight.pressure, dbModel: dbModel.tirePressureFrontRight)
		dbModel.tirePressureMeasTimestamp                      = self.map(statusAttribute: businessModel.tires.pressureMeasurementTimestamp, dbModel: dbModel.tirePressureMeasTimestamp)
		dbModel.tirePressureRearLeft                           = self.map(statusAttribute: businessModel.tires.rearLeft.pressure, dbModel: dbModel.tirePressureRearLeft)
		dbModel.tirePressureRearRight                          = self.map(statusAttribute: businessModel.tires.rearRight.pressure, dbModel: dbModel.tirePressureRearRight)
		dbModel.tireSensorAvailable                            = self.map(statusAttribute: businessModel.tires.sensorAvailable, dbModel: dbModel.tireSensorAvailable)
		dbModel.towProtectionSensorStatus                      = self.map(statusAttribute: businessModel.theft.towProtectionSensorStatus, dbModel: dbModel.towProtectionSensorStatus)
		dbModel.trackingStateHU                                = self.map(statusAttribute: businessModel.hu.isTrackingEnable, dbModel: dbModel.trackingStateHU)
		dbModel.valetDrivingMode                               = self.map(statusAttribute: businessModel.drivingMode.valet, dbModel: dbModel.valetDrivingMode)
		dbModel.vehicleDataConnectionState                     = self.map(statusAttribute: businessModel.vehicle.dataConnectionState, dbModel: dbModel.vehicleDataConnectionState)
		dbModel.vehicleLockState                               = self.map(statusAttribute: businessModel.vehicle.vehicleLockState, dbModel: dbModel.vehicleLockState)
		dbModel.vTime                                          = self.map(statusAttribute: businessModel.vehicle.time, dbModel: dbModel.vTime)
		dbModel.warningBrakeFluid                              = self.map(statusAttribute: businessModel.warnings.brakeFluid, dbModel: dbModel.warningBrakeFluid)
		dbModel.warningBrakeLiningWear                         = self.map(statusAttribute: businessModel.warnings.brakeLiningWear, dbModel: dbModel.warningBrakeLiningWear)
		dbModel.warningCoolantLevelLow                         = self.map(statusAttribute: businessModel.warnings.coolantLevelLow, dbModel: dbModel.warningCoolantLevelLow)
		dbModel.warningEngineLight                             = self.map(statusAttribute: businessModel.warnings.engineLight, dbModel: dbModel.warningEngineLight)
		dbModel.warningTireLamp                                = self.map(statusAttribute: businessModel.warnings.tireLamp, dbModel: dbModel.warningTireLamp)
		dbModel.warningTireLevelPrw                            = self.map(statusAttribute: businessModel.warnings.tireLevelPrw, dbModel: dbModel.warningTireLevelPrw)
		dbModel.warningTireSprw                                = self.map(statusAttribute: businessModel.warnings.tireSprw, dbModel: dbModel.warningTireSprw)
		dbModel.warningTireSrdk                                = self.map(statusAttribute: businessModel.tires.warningLevelOverall, dbModel: dbModel.warningTireSrdk)
		dbModel.warningWashWater                               = self.map(statusAttribute: businessModel.warnings.washWater, dbModel: dbModel.warningWashWater)
		dbModel.weekdaytariff                                  = self.map(statusAttribute: businessModel.zev.weekdayTariff, dbModel: dbModel.weekdaytariff)
		dbModel.weekendtariff                                  = self.map(statusAttribute: businessModel.zev.weekendTariff, dbModel: dbModel.weekendtariff)
		dbModel.weeklyProfile                                  = self.map(statusAttribute: businessModel.hu.weeklyProfile, dbModel: dbModel.weeklyProfile)
		dbModel.weeklySetHU                                    = self.map(statusAttribute: businessModel.hu.weeklySetHU, dbModel: dbModel.weeklySetHU)
		dbModel.windowFrontLeftState                           = self.map(statusAttribute: businessModel.windows.frontLeft, dbModel: dbModel.windowFrontLeftState)
		dbModel.windowFrontRightState                          = self.map(statusAttribute: businessModel.windows.frontRight, dbModel: dbModel.windowFrontRightState)
		dbModel.windowRearLeftState                            = self.map(statusAttribute: businessModel.windows.rearLeft, dbModel: dbModel.windowRearLeftState)
		dbModel.windowRearRightState                           = self.map(statusAttribute: businessModel.windows.rearRight, dbModel: dbModel.windowRearRightState)
		dbModel.windowStatusOverall                            = self.map(statusAttribute: businessModel.windows.overallState, dbModel: dbModel.windowStatusOverall)
		dbModel.windowBlindRearStatus                          = self.map(statusAttribute: businessModel.windows.blindRear, dbModel: dbModel.windowBlindRearStatus)
		dbModel.windowBlindRearLeftStatus                      = self.map(statusAttribute: businessModel.windows.blindRearLeft, dbModel: dbModel.windowBlindRearLeftStatus)
		dbModel.windowBlindRearRightStatus                     = self.map(statusAttribute: businessModel.windows.blindRearRight, dbModel: dbModel.windowBlindRearRightStatus)
		dbModel.zevActive                                      = self.map(statusAttribute: businessModel.zev.isActive, dbModel: dbModel.zevActive)

		return dbModel
	}
	// swiftlint:enable function_body_length
}