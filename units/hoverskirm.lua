return { hoverskirm = {
  name                = [[Scalpel]],
  description         = [[Skirmisher/Anti-Heavy Hovercraft]],
  acceleration        = 0.24,
  activateWhenBuilt   = true,
  brakeRate           = 2.46,
  builder             = false,
  buildPic            = [[hoverskirm.png]],
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  category            = [[HOVER]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[38 38 38]],

  collisionVolumeType    = [[ellipsoid]],
  corpse              = [[DEAD]],

  customParams        = {
    bait_level_default = 1,
    modelradius    = [[25]],
    turnatfullspeed_hover = [[1]],
    okp_damage = 615,
    selection_scale = 0.98,
  },

  explodeAs           = [[BIG_UNITEX]],
  footprintX          = 3,
  footprintZ          = 3,
  health              = 660,
  iconType            = [[hoverskirm]],
  leaveTracks         = true,
  maxSlope            = 18,
  maxWaterDepth       = 22,
  metalCost           = 220,
  movementClass       = [[HOVER3]],
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE SUB MINE DRONE]],
  objectName          = [[nsaclash.s3o]],
  script              = [[hoverskirm.lua]],
  selfDestructAs      = [[BIG_UNITEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:HEAVYHOVERS_ON_GROUND]],
      [[custom:JANUSMUZZLE]],
      [[custom:JANUSBACK]],
    },

  },

  sightDistance       = 484,
  sonarDistance       = 484,
  speed               = 63,
  turninplace         = 0,
  turnRate            = 563,
  workerTime          = 0,
  
  weapons             = {

    {
      def                = [[MISSILE]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER SUB]],
    },

  },


  weaponDefs          = {

    MISSILE = {
      name                    = [[Heavy Missile Battery]],
      areaOfEffect            = 80,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 1.4,
      
      customParams        = {
        burst = Shared.BURST_RELIABLE,
        force_ignore_ground = [[1]],

        light_camera_height = 3000,
        light_color = [[1 0.58 0.17]],
        light_radius = 200,
      },
      
      damage                  = {
        default = 320,
      },

      fireStarter             = 70,
      fixedlauncher           = true,
      flightTime              = 3.1,
      impulseBoost            = 0.75,
      impulseFactor           = 0.3,
      interceptedByShieldType = 2,
      leadlimit               = 0,
      model                   = [[wep_m_dragonsfang.s3o]],
      projectiles             = 2,
      range                   = 440,
      reloadtime              = 10,
      smokeTrail              = true,
      soundHit                = [[ex_med5_flat_pitch]],
      soundHitVolume          = 8,
      soundStart              = [[weapon/missile/rapid_rocket_fire2]],
      soundStartVolume        = 7,
      startVelocity           = 190,
      texture2                = [[lightsmoketrail]],
      tracks                  = true,
      trajectoryHeight        = 0.4,
      turnRate                = 21000,
      turret                  = true,
      weaponAcceleration      = 90,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 180,
    },
    
  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[nsaclash_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
