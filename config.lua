Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 60 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = false -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-53.23, -1120.12),
                vector2(-50.68, -1106.91),
                vector2(-49.6, -1103.36),
                vector2(-60.34, -1099.15),
                vector2(-52.75, -1078.03),
                vector2(-25.6, -1088.25),
                vector2(-33.09, -1108.48),
                vector2(-38.84, -1120.76)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-49.66, -1083.68, 27.3, 73.63), -- where the vehicle will spawn on display
                defaultVehicle = 'ardent', -- Default display vehicle
                chosenVehicle = 'ardent', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-54.74, -1096.84, 27.3, 212.78),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-47.84, -1092.21, 27.3, 289.66),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-42.45, -1101.16, 27.3, 192.51),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-37.12, -1093.4, 27.3, 201.38),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            },
            [6] = {
                coords = vector4(-40.23, -1117.35, 26.67, 160.29),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-43.86, -1117.68, 26.67, 156.32),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-47.32, -1117.97, 26.67, 159.62),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
        },
    },
    ['law'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(437.64, -976.75),
                vector2(425.02, -976.77),
                vector2(424.07, -997.56),
                vector2(430.08, -998.48),
                vector2(437.01, -988.2)
            },
            ['minZ'] = 24.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'Law Enforcement', -- Blip name
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(434.33, -979.73, 25.14), -- Blip Location
        ['ReturnLocation'] = vector3(464.35, -1016.52, 26.42), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(430.51, -986.63, 25.14, 211.51), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(430.51, -986.63, 25.14, 211.51), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(434.34, -979.73, 23.4, 358.37), -- where the vehicle will spawn on display
                defaultVehicle = '16exp', -- Default display vehicle
                chosenVehicle = '16exp', -- Same as default but is dynamically changed when swapping vehicles
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(951.26, -984.86),
                vector2(912.08, -987.07),
                vector2(911.26, -974.18),
                vector2(903.33, -974.2),
                vector2(902.64, -945.24),
                vector2(931.48, -934.47),
                vector2(956.03, -932.91),
                vector2(961.16, -933.62),
                vector2(964.35, -983.87)
            },
            ['minZ'] = 38.97,
            ['maxZ'] = 41.0,
            ['size'] = 2.75 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(945.91, -977.74, 39.5),
        ['ReturnLocation'] = vector3(937.5, -990.15, 38.39),
        ['VehicleSpawn'] = vector4(955.53, -959.59, 39.5, 93.46),
        ['TestDriveSpawn'] = vector4(957.98, -989.47, 40.27, 90.52), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(937.25, -970.86, 39.54, 273.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(916.26, -962.49, 39.5, 270.09),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(918.18, -982.53, 39.5, 273.59),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero'
            },
            [4] = {
                coords = vector4(946.11, -937.67, 39.5, 180.33),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [5] = {
                coords = vector4(958.32, -947.77, 39.5, 87.29),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
            [6] = {
                coords = vector4(938.23, -978.49, 39.57, 4.56),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer'
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99, -- min height of the shop zone
            ['maxZ'] = 16.99, -- max height of the shop zone
            ['size'] = 7.0, -- size of the vehicles zones
        },
        ['Job'] = 'airline', -- Name of job or none
        ['ShopLabel'] = 'Air Shop', -- Blip name
        ['showBlip'] = false, -- true or false
        ['blipSprite'] = 251, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus', -- Default display vehicle
                chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(872.23, -1173.5),
                vector2(868.88, -1162.7),
                vector2(900.91, -1156.54),
                vector2(901.96, -1173.71),
                vector2(883.59, -1174.47),
                vector2(884.59, -1161.29),
                vector2(890.06, -1155.0),
                vector2(907.71, -1168.71)
            },
            ['minZ'] = 23.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 5.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 477, -- Blip sprite
        ['blipColor'] = 2, -- Blip color
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler', -- Default display vehicle
                chosenVehicle = 'hauler', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
}
