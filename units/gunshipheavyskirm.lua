return { gunshipheavyskirm = {
  name                = [[Nimbus]],
  description         = [[Fire Support Gunship]],
  acceleration        = 0.2,
  brakeRate           = 0.16,
  builder             = false,
  buildPic            = [[gunshipheavyskirm.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP]],
  collide             = true,
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeScales  = [[40 20 60]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],
  cruiseAltitude      = 240,

  customParams        = {
    bait_level_default = 0,
    airstrafecontrol = [[0]],
    modelradius      = [[10]],
    aim_lookahead    = 200,

    outline_x = 110,
    outline_y = 110,
    outline_yoff = 10,
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  health              = 2800,
  hoverAttack         = true,
  iconType            = [[heavygunshipskirm]],
  maneuverleashlength = [[1280]],
  metalCost           = 760,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM SATELLITE SUB]],
  objectName          = [[stingray.s3o]],
  script              = [[gunshipheavyskirm.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_m]],
    },

  },
  sightDistance       = 660,
  speed               = 99,
  turnRate            = 600,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[EMG]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 70,
      onlyTargetCategory = [[SWIM LAND SHIP SINK TURRET FLOAT GUNSHIP FIXEDWING HOVER]],
    },

  },


  weaponDefs          = {

    EMG = {
      name                    = [[Heavy Pulse MG]],
      areaOfEffect            = 40,
      avoidFeature            = false,
      burnBlow                = true,
      burst                   = 4,
      burstrate               = 0.1,
      cegTag                  = [[hmg_trail]],
      collideFriendly         = false,
      craterBoost             = 0.15,
      craterMult              = 0.3,

      customparams = {
        combatrange = 630,
        light_camera_height = 2000,
        light_color = [[0.9 0.84 0.45]],
        light_ground_height = 120,
      },
      
      damage                  = {
        default = 19.3,
      },

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:EMG_HIT_HE]],
      firestarter             = 70,
      impulseBoost            = 0,
      impulseFactor           = 0.2,
      interceptedByShieldType = 1,
      myGravity               = 0.15,
      noSelfDamage            = true,
      range                   = 600,
      reloadtime              = 0.433,
      rgbColor                = [[1 0.95 0.5]],
      soundHit                = [[weapon/cannon/emg_hit]],
      soundHitVolume          = 2.2,
      soundStart              = [[weapon/cannon/brawler_emg]],
      soundStartVolume        = 2.4,
      sprayAngle              = 1400,
      tolerance               = 2000,
      turret                  = true,
      weaponTimer             = 1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 420,
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[brawler_d.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

} }
