return { gunshipraid = {
  name                   = [[Locust]],
  description            = [[Raider Gunship]],
  acceleration           = 0.18,
  brakeRate              = 0.16,
  builder                = false,
  buildPic               = [[gunshipraid.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[63 63 63]],
  selectionVolumeType    = [[ellipsoid]],
  collide                = true,
  corpse                 = [[DEAD]],
  cruiseAltitude         = 100,

  customParams           = {
    airstrafecontrol = [[1]],
    modelradius    = [[18]],
    selection_scale = 1.2,
  },

  explodeAs              = [[GUNSHIPEX]],
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  health                 = 800,
  hoverAttack            = true,
  iconType               = [[gunshipraider]],
  idleAutoHeal           = 6,
  idleTime               = 150,
  metalCost              = 220,
  noChaseCategory        = [[TERRAFORM SUB]],
  objectName             = [[banshee.s3o]],
  script                 = [[gunshipraid.lua]],
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:VINDIBACK]],
    },

  },

  sightDistance          = 500,
  speed                  = 250,
  turnRate               = 693,

  weapons                = {

    {
      def                = [[LASER]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 150,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    LASER = {
      name                    = [[Light Laserbeam]],
      areaOfEffect            = 8,
      avoidFeature            = false,
      beamTime                = 4/30,
      collideFriendly         = false,
      coreThickness           = 0.3,
      craterBoost             = 0,
      craterMult              = 0,
      --cylinderTargeting     = 1,

      customparams = {
        stats_hide_damage = 1, -- continuous laser
        stats_hide_reload = 1,
        
        light_color = [[1 0.25 0.25]],
        light_radius = 175,
        
        combatrange = 240,
      },

      damage                  = {
        default = 8.1,
      },

      explosionGenerator      = [[custom:flash1red]],
      --heightMod             = 0.5,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 2,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 260,
      reloadtime              = 4/30,
      rgbColor                = [[1 0 0]],
      soundStart              = [[weapon/laser/laser_burn9]],
      soundStartVolume        = 8.2,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 2,
      tolerance               = 2000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[banshee_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2a.s3o]],
    },

  },

} }
