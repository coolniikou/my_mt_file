#------------------------------------------------------------------------------
# File:         fr.pm
#
# Description:  ExifTool language-specific tag information
#
# Notes:        This file generated automatically by Image::ExifTool::TagInfoXML
#------------------------------------------------------------------------------

package Image::ExifTool::Lang::fr;

%Image::ExifTool::Lang::fr::Translate = (
   'AEAperture' => 'Ouverture AE',
   'AEBAutoCancel' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AEBXv' => 'Compensation d\'expo. auto en bracketing',
   'AEExposureTime' => 'Temps d\'exposition AE',
   'AEExtra' => 'Suppléments AE ?',
   'AELock' => {
      Description => 'Verrouillage AE',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AEMaxAperture' => 'Ouverture maxi AE',
   'AEMaxAperture2' => 'Ouverture maxi AE (2)',
   'AEMeteringMode' => {
      Description => 'spot',
      PrintConv => {
        'Multi-segment' => 'multizone',
      },
    },
   'AEMeteringSegments' => 'Segments de mesure AE',
   'AEMinAperture' => 'Ouverture mini AE',
   'AEMinExposureTime' => 'Temps d\'exposition mini AE',
   'AEProgramMode' => {
      Description => 'Mode programme AE',
      PrintConv => {
        'Av, B or X' => 'Av, B ou X',
        'Candlelight' => 'bougie',
        'DOF Program' => 'programme PdC',
        'DOF Program (P-Shift)' => 'programme PdC (décalage P)',
        'Hi-speed Program' => 'programme grande vitesse',
        'Hi-speed Program (P-Shift)' => 'programme grande vitesse (décalage P)',
        'Kids' => 'enfants',
        'Landscape' => 'paysage',
        'M, P or TAv' => 'M, P ou TAv',
        'MTF Program' => 'programme FTM',
        'MTF Program (P-Shift)' => 'programme FTM (décalage P)',
        'Macro' => 'macro',
        'Museum' => 'musée',
        'Night Scene' => 'nocturne',
        'Night Scene Portrait' => 'portrait nocturne',
        'No Flash' => 'sans flash',
        'Pet' => 'animaux de compagnie',
        'Portrait' => 'portrait',
        'Sport' => 'sport',
        'Standard' => 'standard',
        'Sunset' => 'coucher de soleil',
        'Surf & Snow' => 'surf et neige',
        'Sv or Green Mode' => 'Sv ou mode vert',
        'Text' => 'texte',
      },
    },
   'AEXv' => 'Compensation d\'exposition auto',
   'AE_ISO' => 'Sensibilité ISO AE',
   'AFAdjustment' => 'Ajustement AF',
   'AFAreaIllumination' => {
      PrintConv => {
        'Auto' => 'auto',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AFAssist' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AFAssistIlluminator' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AFDefocus' => 'Défocalisation AF',
   'AFIntegrationTime' => 'Temps d\'intégration AF',
   'AFPoint' => {
      PrintConv => {
        'Bottom' => 'bas',
        'Center' => 'centre',
        'Left' => 'gauche',
        'None' => 'aucune',
        'Right' => 'droit',
        'Top' => 'haut',
      },
    },
   'AFPointActivationArea' => {
      PrintConv => {
        'Standard' => 'standard',
      },
    },
   'AFPointBrightness' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'AFPointDisplayDuringFocus' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AFPointIllumination' => {
      PrintConv => {
        'Auto' => 'auto',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AFPointMode' => {
      Description => 'Mode de mise au point AF',
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'AFPointRegistration' => {
      PrintConv => {
        'Automatic' => 'auto',
        'Bottom' => 'bas',
        'Center' => 'centre',
        'Left' => 'gauche',
        'Right' => 'droit',
        'Top' => 'haut',
      },
    },
   'AFPointSelected' => {
      Description => 'Point AF sélectionné',
      PrintConv => {
        'Auto' => 'auto',
        'Automatic Tracking AF' => 'AF en suivi auto',
        'Bottom' => 'bas',
        'Center' => 'centre',
        'Face Recognition AF' => 'AF en reconnaissance de visage',
        'Fixed Center' => 'fixe au centre',
        'Left' => 'gauche',
        'Lower-left' => 'bas gauche',
        'Lower-right' => 'bas droit',
        'Mid-left' => 'milieu gauche',
        'Mid-right' => 'milieu droit',
        'Right' => 'droit',
        'Top' => 'haut',
        'Upper-left' => 'haut gauche',
        'Upper-right' => 'haut droite',
      },
    },
   'AFPointSelected2' => {
      Description => 'Point AF sélectionné 2',
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'AFPointSelectionMethod' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'AFPointsInFocus' => {
      Description => 'Points AF nets',
      PrintConv => {
        'Bottom' => 'bas',
        'Bottom, Center' => 'bas + centre',
        'Bottom-center' => 'bas centre',
        'Bottom-left' => 'bas gauche',
        'Bottom-right' => 'bas droit',
        'Center' => 'centre',
        'Center (horizontal)' => 'centre (horizontal)',
        'Center (vertical)' => 'centre (vertical)',
        'Fixed Center or Multiple' => 'centre fixe ou multiple',
        'Left' => 'gauche',
        'Lower-left, Bottom' => 'bas gauche + bas',
        'Lower-left, Mid-left' => 'bas gauche + milieu gauche',
        'Lower-right, Bottom' => 'bas droit + bas',
        'Lower-right, Mid-right' => 'bas droit + milieu droit',
        'Mid-left' => 'milieu gauche',
        'Mid-left, Center' => 'milieu gauche + centre',
        'Mid-right' => 'milieu droit',
        'Mid-right, Center' => 'milieu droit + centre',
        'None' => 'aucune',
        'Right' => 'droit',
        'Top' => 'haut',
        'Top, Center' => 'haut + centre',
        'Top-center' => 'haut centre',
        'Top-left' => 'haut gauche',
        'Top-right' => 'haut droit',
        'Upper-left, Mid-left' => 'haut gauche + milieu gauche',
        'Upper-left, Top' => 'haut gauche + haut',
        'Upper-right, Mid-right' => 'haut droit + milieu droit',
        'Upper-right, Top' => 'haut droit + haut',
      },
    },
   'AFPointsUnknown2' => {
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'AFPredictor' => 'Prédicteur AF',
   'AIServoTrackingSensitivity' => {
      PrintConv => {
        'Standard' => 'standard',
      },
    },
   'APEVersion' => 'Version APE',
   'ARMIdentifier' => 'Identificateur ARM',
   'ARMVersion' => 'Version ARM',
   'ActionAdvised' => {
      Description => 'Action conseillée',
      PrintConv => {
        'Object Kill' => 'Destruction d\'objet',
        'Object Reference' => 'Référence d\'objet',
        'Object Replace' => 'Remplacement d\'objet',
        'Ojbect Append' => 'Ajout d\'objet',
      },
    },
   'ActiveArea' => 'Zone active',
   'ActiveD-Lighting' => {
      PrintConv => {
        'Low' => 'doux',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ActiveD-LightingMode' => {
      PrintConv => {
        'Low' => 'doux',
        'Normal' => 'normale',
        'Off' => 'hors service',
      },
    },
   'AddAspectRatioInfo' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'AddOriginalDecisionData' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AdultContentWarning' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'AdvancedRaw' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AnalogBalance' => 'Balance analogique',
   'Annotations' => 'Annotations Photoshop',
   'Anti-Blur' => {
      PrintConv => {
        'Off' => 'hors service',
        'n/a' => 'non établie',
      },
    },
   'AntiAliasStrength' => 'Puissance relative du filtre anticrénelage de l\'appareil',
   'Aperture' => 'Nombre F',
   'ApertureRingUse' => {
      Description => 'Utilisation de la bague de diaphragme',
      PrintConv => {
        'Permitted' => 'autorisée',
        'Prohibited' => 'interdite',
      },
    },
   'ApertureValue' => 'Ouverture',
   'ApplicationRecordVersion' => 'Version d\'enregistrement',
   'Artist' => 'Personne qui a créé l\'image',
   'AsShotICCProfile' => 'Profil ICC à la prise de vue',
   'AsShotNeutral' => 'Balance neutre à la prise de vue',
   'AsShotPreProfileMatrix' => 'Matrice de pré-profil à la prise de vue',
   'AsShotProfileName' => 'Nom du profil du cliché',
   'AsShotWhiteXY' => 'Balance blanc X-Y à la prise de vue',
   'AssistButtonFunction' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'AudioDuration' => 'Durée audio',
   'AudioOutcue' => 'Queue audio',
   'AudioSamplingRate' => 'Taux d\'échantillonnage audio',
   'AudioSamplingResolution' => 'Résolution d\'échantillonnage audio',
   'AudioType' => {
      Description => 'Type audio',
      PrintConv => {
        'Mono Actuality' => 'Actualité (audio mono (1 canal))',
        'Mono Music' => 'Musique, transmise par elle-même (audio mono (1 canal))',
        'Mono Question and Answer Session' => 'Question et réponse (audio mono (1 canal))',
        'Mono Raw Sound' => 'Son brut (audio mono (1 canal))',
        'Mono Response to a Question' => 'Réponse à une question (audio mono (1 canal))',
        'Mono Scener' => 'Scener (audio mono (1 canal))',
        'Mono Voicer' => 'Voix (audio mono (1 canal))',
        'Mono Wrap' => 'Wrap (audio mono (1 canal))',
        'Stereo Actuality' => 'Actualité (audio stéréo (2 canaux))',
        'Stereo Music' => 'Musique, transmise par elle-même (audio stéréo (2 canaux))',
        'Stereo Question and Answer Session' => 'Question et réponse (audio stéréo (2 canaux))',
        'Stereo Raw Sound' => 'Son brut (audio stéréo (2 canaux))',
        'Stereo Response to a Question' => 'Réponse à une question (audio stéréo (2 canaux))',
        'Stereo Scener' => 'Scener (audio stéréo (2 canaux))',
        'Stereo Voicer' => 'Voix (audio stéréo (2 canaux))',
        'Stereo Wrap' => 'Wrap (audio stéréo (2 canaux))',
        'Text Only' => 'Texte seul (pas de données d\'objet)',
      },
    },
   'Author' => 'Auteur',
   'AutoAperture' => {
      Description => 'Auto-diaph',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoBracketRelease' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'AutoBracketing' => {
      Description => 'Bracketing auto',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoExposureBracketing' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoFP' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoFocus' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoISO' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoLightingOptimizer' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
        'Standard' => 'standard',
        'n/a' => 'non établie',
      },
    },
   'AutoRedEye' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'AutoRotate' => {
      PrintConv => {
        'None' => 'aucune',
        'Rotate 180' => '180° (bas/droit)',
        'Rotate 270 CW' => '90° sens horaire (gauche/bas)',
        'Rotate 90 CW' => '90° sens antihoraire (droit/haut)',
        'Unknown' => 'inconnu',
      },
    },
   'AvApertureSetting' => 'Réglage d\'ouverture Av',
   'BWMode' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'BackgroundColorIndicator' => 'Indicateur de couleur d\'arrière-plan',
   'BackgroundColorValue' => 'Valeur de couleur d\'arrière-plan',
   'BadFaxLines' => 'Mauvaises lignes de Fax',
   'BannerImageType' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'BaseExposureCompensation' => 'Compensation d\'exposition de base',
   'BaselineExposure' => 'Exposition de base',
   'BaselineNoise' => 'Bruit de base',
   'BaselineSharpness' => 'Accentuation de base',
   'BatteryADBodyLoad' => 'Tension accu boîtier en charge',
   'BatteryADBodyNoLoad' => 'Tension accu boîtier à vide',
   'BatteryADGripLoad' => 'Tension accu poignée en charge',
   'BatteryADGripNoLoad' => 'Tension accu poignée à vide',
   'BatteryLevel' => 'Niveau de batterie',
   'BatteryStates' => 'Etat des accus',
   'BayerGreenSplit' => 'Séparation de vert Bayer',
   'Beep' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'BestQualityScale' => 'Echelle de meilleure qualité',
   'BitsPerComponent' => 'Bits par composante',
   'BitsPerExtendedRunLength' => 'Bits par « Run Length » étendue',
   'BitsPerRunLength' => 'Bits par « Run Length »',
   'BitsPerSample' => 'Nombre de bits par composante',
   'BlackLevel' => 'Niveau noir',
   'BlackLevelDeltaH' => 'Delta H du niveau noir',
   'BlackLevelDeltaV' => 'Delta V du niveau noir',
   'BlackLevelRepeatDim' => 'Dimension de répétition du niveau noir',
   'BlackPoint' => 'Point noir',
   'BlueBalance' => 'Balance bleue',
   'BlueMatrixColumn' => 'Colonne de matrice bleue',
   'BlueTRC' => 'Courbe de reproduction des tons bleus',
   'BlurWarning' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'BracketMode' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'BracketShotNumber' => {
      Description => 'Numéro de cliché en bracketing',
      PrintConv => {
        '1 of 3' => '1 sur 3',
        '1 of 5' => '1 sur 5',
        '2 of 3' => '2 sur 3',
        '2 of 5' => '2 sur 5',
        '3 of 3' => '3 sur 3',
        '3 of 5' => '3 sur 5',
        '4 of 5' => '4 sur 5',
        '5 of 5' => '5 sur 5',
        'n/a' => 'non établie',
      },
    },
   'BrightnessValue' => 'Luminosité',
   'BurstMode' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'By-line' => 'Créateur',
   'By-lineTitle' => 'Fonction du créateur',
   'CFALayout' => {
      Description => 'Organisation CFA',
      PrintConv => {
        'Even columns offset down 1/2 row' => 'organisation décalée A : les colonnes paires sont décalées vers le bas d\'une demi-rangée.',
        'Even columns offset up 1/2 row' => 'organisation décalée B : les colonnes paires sont décalées vers le haut d\'une demi-rangée.',
        'Even rows offset left 1/2 column' => 'organisation décalée D : les rangées paires sont décalées vers la gauche d\'une demi-colonne.',
        'Even rows offset right 1/2 column' => 'organisation décalée C : les rangées paires sont décalées vers la droite d\'une demi-colonne.',
        'Rectangular' => 'plan rectangulaire (ou carré)',
      },
    },
   'CFAPattern' => 'Matrice de filtrage couleur',
   'CFAPattern2' => 'Modèle CFA 2',
   'CFAPlaneColor' => 'Couleur de plan CFA',
   'CFARepeatPatternDim' => 'Dimension du modèle de répétition CFA',
   'CMMFlags' => 'Drapeaux CMM',
   'CMYKEquivalent' => 'Equivalent CMJK',
   'CPUFirmwareVersion' => 'Version de firmware de CPU',
   'CPUType' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'CalibrationDateTime' => 'Date et heure de calibration',
   'CalibrationIlluminant1' => {
      Description => 'Illuminant de calibration 1',
      PrintConv => {
        'Cloudy' => 'temps nuageux',
        'Cool White Fluorescent' => 'fluorescente type soft',
        'Day White Fluorescent' => 'fluorescente type blanc',
        'Daylight' => 'lumière du jour',
        'Daylight Fluorescent' => 'fluorescente type jour',
        'Fine Weather' => 'beau temps',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'ISO Studio Tungsten' => 'Tungstène studio ISO',
        'Other' => 'autre source de lumière',
        'Shade' => 'ombre',
        'Standard Light A' => 'lumière standard A',
        'Standard Light B' => 'lumière standard B',
        'Standard Light C' => 'lumière standard C',
        'Tungsten' => 'tungstène (lumière incandescente)',
        'Unknown' => 'inconnu',
        'White Fluorescent' => 'fluorescent blanc',
      },
    },
   'CalibrationIlluminant2' => {
      Description => 'Illuminant de calibration 2',
      PrintConv => {
        'Cloudy' => 'temps nuageux',
        'Cool White Fluorescent' => 'fluorescente type soft',
        'Day White Fluorescent' => 'fluorescente type blanc',
        'Daylight' => 'lumière du jour',
        'Daylight Fluorescent' => 'fluorescente type jour',
        'Fine Weather' => 'beau temps',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'ISO Studio Tungsten' => 'Tungstène studio ISO',
        'Other' => 'autre source de lumière',
        'Shade' => 'ombre',
        'Standard Light A' => 'lumière standard A',
        'Standard Light B' => 'lumière standard B',
        'Standard Light C' => 'lumière standard C',
        'Tungsten' => 'tungstène (lumière incandescente)',
        'Unknown' => 'inconnu',
        'White Fluorescent' => 'fluorescent blanc',
      },
    },
   'CameraCalibration1' => 'Calibration d\'appareil 1',
   'CameraCalibration2' => 'Calibration d\'appareil 2',
   'CameraCalibrationSig' => 'Signature de calibration de l\'appareil',
   'CameraOrientation' => {
      PrintConv => {
        'Horizontal (normal)' => '0° (haut/gauche)',
        'Rotate 270 CW' => '90° sens horaire (gauche/bas)',
        'Rotate 90 CW' => '90° sens antihoraire (droit/haut)',
      },
    },
   'CameraSerialNumber' => 'Numéro de série de l\'appareil',
   'CameraTemperature' => 'Température de l\'appareil',
   'CameraType' => 'Type d\'objectif Pentax',
   'CanonExposureMode' => {
      PrintConv => {
        'Aperture-priority AE' => 'priorité ouverture',
        'Bulb' => 'pose B',
        'Manual' => 'manuelle',
        'Shutter speed priority AE' => 'priorité vitesse',
      },
    },
   'CanonFlashMode' => {
      PrintConv => {
        'Auto' => 'auto',
        'Off' => 'hors service',
        'On' => 'en service',
        'Red-eye reduction' => 'réduction yeux rouges',
      },
    },
   'Caption-Abstract' => 'Légende / Description',
   'CaptureXResolutionUnit' => {
      PrintConv => {
        'um' => 'µm (micromètre)',
      },
    },
   'CaptureYResolutionUnit' => {
      PrintConv => {
        'um' => 'µm (micromètre)',
      },
    },
   'Category' => 'Catégorie',
   'CellLength' => 'Longueur de cellule',
   'CellWidth' => 'Largeur de cellule',
   'CenterWeightedAreaSize' => {
      PrintConv => {
        'Average' => 'moyenne',
      },
    },
   'CharTarget' => 'Cible caractère',
   'ChromaBlurRadius' => 'Rayon de flou de chromatisme',
   'ChromaticAdaptation' => 'Adaptation chromatique',
   'ChrominanceNR_TIFF_JPEG' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
      },
    },
   'ChrominanceNoiseReduction' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
      },
    },
   'City' => 'Ville',
   'ClassifyState' => 'Etat de classification',
   'CleanFaxData' => 'Données de Fax propres',
   'ClipPath' => 'Chemin de rognage',
   'CodedCharacterSet' => 'Jeu de caractères codé',
   'ColorAberrationControl' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ColorAdjustmentMode' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ColorBalanceAdj' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ColorBooster' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ColorCalibrationMatrix' => 'Table de matrice de calibration de couleur',
   'ColorCharacterization' => 'Caractérisation de couleur',
   'ColorComponents' => 'Composants Colorimétriques',
   'ColorEffect' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'ColorFilter' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'Off' => 'hors service',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'ColorMap' => 'Charte de couleur',
   'ColorMatrix1' => 'Matrice de couleur 1',
   'ColorMatrix2' => 'Matrice de couleur 2',
   'ColorMode' => {
      PrintConv => {
        'Evening' => 'soir',
        'Landscape' => 'paysage',
        'Natural' => 'naturel',
        'Night Scene' => 'nocturne',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'Portrait' => 'portrait',
        'RGB' => 'RVB',
        'Standard' => 'standard',
        'Sunset' => 'coucher de soleil',
      },
    },
   'ColorMoireReduction' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ColorMoireReductionMode' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
      },
    },
   'ColorPalette' => 'Palette de couleur',
   'ColorRepresentation' => 'Représentation de couleur',
   'ColorResponseUnit' => 'Unité de réponse couleur',
   'ColorSequence' => 'Séquence de couleur',
   'ColorSpace' => {
      Description => 'Espace de couleur',
      PrintConv => {
        'Monochrome' => 'monochrome',
        'RGB' => 'RVB',
        'Uncalibrated' => 'non calibré',
      },
    },
   'ColorSpaceData' => 'Espace de couleur de données',
   'ColorTable' => 'Tableau de couleurs',
   'ColorTemperature' => 'Température de couleur',
   'ColorType' => {
      PrintConv => {
        'RGB' => 'RVB',
      },
    },
   'ColorantOrder' => 'Ordre de colorant',
   'ColorimetricReference' => 'Référence colorimétrique',
   'CommandDialsChangeMainSub' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'CommandDialsMenuAndPlayback' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'CommanderGroupAMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'CommanderGroupBMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'CommanderInternalFlash' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'Comment' => 'Commentaire',
   'Comments' => 'Commentaires',
   'ComponentsConfiguration' => 'Signification de chaque composante',
   'CompressedBitsPerPixel' => 'Mode de compression d\'image',
   'Compression' => {
      Description => 'Schéma de compression',
      PrintConv => {
        'Epson ERF Compressed' => 'compression Epson ERF',
        'JPEG (old-style)' => 'JPEG (ancien style)',
        'Kodak DCR Compressed' => 'compression Kodak DCR',
        'Kodak KDC Compressed' => 'compression Kodak KDC',
        'Next' => 'encodage NeXT 2 bits',
        'Nikon NEF Compressed' => 'compression Nikon NEF',
        'None' => 'aucune',
        'Pentax PEF Compressed' => 'compression Pentax PEF',
        'SGILog' => 'encodage Log luminance SGI 32 bits',
        'SGILog24' => 'encodage Log luminance SGI 24 bits',
        'Sony ARW Compressed' => 'compression Sony ARW',
        'Thunderscan' => 'encodage ThunderScan 4 bits',
        'Uncompressed' => 'non compressé',
      },
    },
   'CompressionType' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'ConnectionSpaceIlluminant' => 'Illuminant d\'espace de connexion',
   'ConsecutiveBadFaxLines' => 'Mauvaises lignes de Fax consécutives',
   'ContentLocationCode' => 'Code du lieu du contenu',
   'ContentLocationName' => 'Nom du lieu du contenu',
   'ContentType' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'Contrast' => {
      Description => 'Contraste',
      PrintConv => {
        'High' => 'dur',
        'Low' => 'doux',
        'Normal' => 'normale',
      },
    },
   'ControlMode' => {
      PrintConv => {
        'n/a' => 'non établie',
      },
    },
   'ConversionLens' => {
      PrintConv => {
        'Macro' => 'macro',
        'Off' => 'hors service',
      },
    },
   'Copyright' => 'Propriétaire du copyright',
   'CopyrightNotice' => 'Mention de copyright',
   'CopyrightStatus' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'Country-PrimaryLocationCode' => 'Code de pays ISO',
   'Country-PrimaryLocationName' => 'Pays',
   'CreateDate' => 'Date de la création des données numériques',
   'Creator' => 'Créateur',
   'Credit' => 'Fournisseur',
   'CropUnit' => {
      PrintConv => {
        'inches' => 'pouce',
      },
    },
   'CropUnits' => {
      PrintConv => {
        'inches' => 'pouce',
      },
    },
   'CurrentICCProfile' => 'Profil ICC actuel',
   'CurrentIPTCDigest' => 'Sommaire Courant IPTC',
   'CurrentPreProfileMatrix' => 'Matrice de pré-profil actuelle',
   'Curves' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'CustomRendered' => {
      Description => 'Traitement d\'image personnalisé',
      PrintConv => {
        'Custom' => 'traitement personnalisé',
        'Normal' => 'traitement normal',
      },
    },
   'D-LightingHQ' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'D-LightingHS' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'DNGBackwardVersion' => 'Version DNG antérieure',
   'DNGLensInfo' => 'Distance focale minimale',
   'DNGVersion' => 'Version DNG',
   'DSPFirmwareVersion' => 'Version de firmware de DSP',
   'DataCompressionMethod' => 'Fournisseur/propriétaire de l\'algorithme de compression de données',
   'DataDump' => 'Vidage données ?',
   'DataImprint' => {
      PrintConv => {
        'None' => 'aucune',
        'Text' => 'texte',
      },
    },
   'DataType' => 'Type de données',
   'DateCreated' => 'Date de création',
   'DateSent' => 'Date d\'envoi',
   'DateStampMode' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'DateTime' => 'Date de modification de fichier',
   'DateTimeOriginal' => 'Date de la création des données originales',
   'DefaultCropOrigin' => 'Origine de rognage par défaut',
   'DefaultCropSize' => 'Taille de rognage par défaut',
   'DefaultScale' => 'Echelle par défaut',
   'DestinationCity' => 'Ville de destination',
   'DestinationCityCode' => 'Code ville de destination',
   'DestinationDST' => {
      Description => 'Heure d\'été de destination',
      PrintConv => {
        'No' => 'non',
        'Yes' => 'oui',
      },
    },
   'DeviceAttributes' => 'Attributs d\'appareil',
   'DeviceManufacturer' => 'Fabricant de l\'appareil',
   'DeviceMfgDesc' => 'Description du fabricant d\'appareil',
   'DeviceModel' => 'Modèle de l\'appareil',
   'DeviceModelDesc' => 'Description du modèle d\'appareil',
   'DeviceSettingDescription' => 'Description des réglages du dispositif',
   'DialDirectionTvAv' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'DigitalCreationDate' => 'Date de numérisation',
   'DigitalCreationTime' => 'Heure de numérisation',
   'DigitalZoom' => {
      Description => 'Zoom numérique',
      PrintConv => {
        'None' => 'aucune',
        'Off' => 'hors service',
      },
    },
   'DigitalZoomOn' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'DigitalZoomRatio' => 'Rapport de zoom numérique',
   'Directory' => 'Dossier',
   'DisplaySize' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'DisplayUnits' => {
      PrintConv => {
        'inches' => 'pouce',
      },
    },
   'DisplayXResolutionUnit' => {
      PrintConv => {
        'um' => 'µm (micromètre)',
      },
    },
   'DisplayYResolutionUnit' => {
      PrintConv => {
        'um' => 'µm (micromètre)',
      },
    },
   'DisplayedUnitsX' => {
      PrintConv => {
        'inches' => 'pouce',
      },
    },
   'DisplayedUnitsY' => {
      PrintConv => {
        'inches' => 'pouce',
      },
    },
   'DistortionCorrection' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'DistortionCorrection2' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'DjVuVersion' => 'Version DjVu',
   'DocumentHistory' => 'Historique du document',
   'DocumentName' => 'Nom du document',
   'DocumentNotes' => 'Remarques sur le document',
   'DotRange' => 'Étendue de points',
   'DriveMode' => {
      Description => 'Mode de prise de vue',
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'DriveMode2' => {
      Description => 'Exposition multiple',
      PrintConv => {
        'Single-frame' => 'vue par vue',
      },
    },
   'DynamicRange' => {
      PrintConv => {
        'Standard' => 'standard',
      },
    },
   'DynamicRangeExpansion' => {
      Description => 'Expansion de la dynamique',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'DynamicRangeOptimizer' => {
      PrintConv => {
        'Off' => 'hors service',
        'Standard' => 'standard',
      },
    },
   'E-DialInProgram' => {
      PrintConv => {
        'P Shift' => 'décalage P',
        'Tv or Av' => 'Tv ou Av',
      },
    },
   'ETTLII' => {
      PrintConv => {
        'Average' => 'moyenne',
      },
    },
   'EVSteps' => {
      Description => 'Pas IL',
      PrintConv => {
        '1/2 EV Steps' => 'Pas de 1/2 IL',
        '1/2 EV steps' => 'Pas de 1/2 IL',
        '1/3 EV Steps' => 'Pas de 1/3 IL',
        '1/3 EV steps' => 'Pas de 1/3 IL',
      },
    },
   'EasyExposureCompensation' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'EasyMode' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Night' => 'scène de nuit',
        'Portrait' => 'portrait',
        'Snow' => 'neige',
        'Super Macro' => 'super Macro',
      },
    },
   'EdgeNoiseReduction' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'EditStatus' => 'Statut d\'édition',
   'EditorialUpdate' => {
      Description => 'Mise à jour éditoriale',
      PrintConv => {
        'Additional language' => 'Langues supplémentaires',
      },
    },
   'EffectiveLV' => 'Indice de lumination effectif',
   'Emphasis' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'EncodingProcess' => {
      Description => 'Procédé de Codage',
      PrintConv => {
        'Baseline DCT, Huffman coding' => 'Baseline DCT, codage Huffman',
        'Extended sequential DCT, Huffman coding' => 'Extended sequential DCT, codage Huffman',
        'Extended sequential DCT, arithmetic coding' => 'Extended sequential DCT, codage arithmétique',
        'Lossless, Differential Huffman coding' => 'Lossless, codage Huffman différentiel',
        'Lossless, Huffman coding' => 'Lossless, codage Huffman',
        'Lossless, arithmetic coding' => 'Lossless, codage arithmétique',
        'Lossless, differential arithmetic coding' => 'Lossless, codage arithmétique différentiel',
        'Progressive DCT, Huffman coding' => 'Progressive DCT, codage Huffman',
        'Progressive DCT, arithmetic coding' => 'Progressive DCT, codage arithmétique',
        'Progressive DCT, differential Huffman coding' => 'Progressive DCT, codage Huffman différentiel',
        'Progressive DCT, differential arithmetic coding' => 'Progressive DCT, codage arithmétique différentiel',
        'Sequential DCT, differential Huffman coding' => 'Sequential DCT, codage Huffman différentiel',
        'Sequential DCT, differential arithmetic coding' => 'Sequential DCT, codage arithmétique différentiel',
      },
    },
   'Encryption' => 'Chiffrage',
   'EndPoints' => 'Points de terminaison',
   'EnhanceDarkTones' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Enhancement' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'Off' => 'hors service',
        'Red' => 'rouge',
      },
    },
   'EnvelopeNumber' => 'Numéro d\'enveloppe',
   'EnvelopePriority' => {
      Description => 'Priorité d\'enveloppe',
      PrintConv => {
        '0 (reserved)' => '0 (réservé pour utilisation future)',
        '1 (most urgent)' => '1 (très urgent)',
        '5 (normal urgency)' => '5 (normalement urgent)',
        '8 (least urgent)' => '8 (moins urgent)',
        '9 (user-defined priority)' => '9 (priorité définie par l\'utilisateur)',
      },
    },
   'EnvelopeRecordVersion' => 'Version d\'enregistrement',
   'Error' => 'Erreur',
   'ExcursionTolerance' => {
      Description => 'Tolérance d\'excursion ',
      PrintConv => {
        'Allowed' => 'Possible',
        'Not Allowed' => 'Non permis (défaut)',
      },
    },
   'ExifByteOrder' => 'Indicateur d\'ordre des octets Exif',
   'ExifCameraInfo' => 'Info d\'appareil photo Exif',
   'ExifImageHeight' => 'Hauteur d\'image',
   'ExifImageWidth' => 'Largeur d\'image',
   'ExifToolVersion' => 'Version ExifTool',
   'ExifUnicodeByteOrder' => 'Indicateur d\'ordre des octets Unicode Exif',
   'ExifVersion' => 'Version Exif',
   'ExpandFilm' => 'Extension film',
   'ExpandFilterLens' => 'Extension lentille filtre',
   'ExpandFlashLamp' => 'Extension lampe flash',
   'ExpandLens' => 'Extension objectif',
   'ExpandScanner' => 'Extension Scanner',
   'ExpandSoftware' => 'Extension logiciel',
   'ExpirationDate' => 'Date d\'expiration',
   'ExpirationTime' => 'Heure d\'expiration',
   'ExposureBracketStepSize' => 'Intervalle de bracketing d\'exposition',
   'ExposureCompensation' => 'Décalage d\'exposition',
   'ExposureDelayMode' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ExposureIndex' => 'Indice d\'exposition',
   'ExposureMode' => {
      Description => 'Mode d\'exposition',
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Aperture-priority AE' => 'priorité ouverture',
        'Auto' => 'exposition automatique',
        'Auto bracket' => 'bracketting auto',
        'Bulb' => 'pose B',
        'Landscape' => 'paysage',
        'Manual' => 'exposition manuelle',
        'Night Scene' => 'nocturne',
        'Portrait' => 'portrait',
        'Shutter Priority' => 'priorité vitesse',
        'Shutter speed priority AE' => 'priorité vitesse',
      },
    },
   'ExposureModeInManual' => {
      PrintConv => {
        'Center-weighted average' => 'centrale pondérée',
        'Partial metering' => 'partielle',
        'Spot metering' => 'spot',
      },
    },
   'ExposureProgram' => {
      Description => 'Programme d\'exposition',
      PrintConv => {
        'Action (High speed)' => 'programme action (orienté grandes vitesses d\'obturation)',
        'Aperture Priority' => 'priorité ouverture',
        'Aperture-priority AE' => 'priorité ouverture',
        'Creative (Slow speed)' => 'programme créatif (orienté profondeur de champ)',
        'Landscape' => 'mode paysage',
        'Manual' => 'manuel',
        'Not Defined' => 'non défini',
        'Portrait' => 'mode portrait',
        'Program AE' => 'programme normal',
        'Shutter Priority' => 'priorité vitesse',
        'Shutter speed priority AE' => 'priorité vitesse',
      },
    },
   'ExposureTime' => 'Temps de pose',
   'ExposureTime2' => 'Temps de pose 2',
   'ExtendedWBDetect' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ExternalFlash' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ExternalFlashBounce' => {
      Description => 'Réflexion flash externe',
      PrintConv => {
        'Bounce' => 'avec réflecteur',
        'Direct' => 'direct',
        'n/a' => 'non établie',
      },
    },
   'ExternalFlashExposureComp' => {
      Description => 'Compensation d\'exposition flash externe',
      PrintConv => {
        '-0.5' => '-0.5 IL',
        '-1.0' => '-1.0 IL',
        '-1.5' => '-1.5 IL',
        '-2.0' => '-2.0 IL',
        '-2.5' => '-2.5 IL',
        '-3.0' => '-3.0 IL',
        '0.0' => '0.0 IL',
        '0.5' => '0.5 IL',
        '1.0' => '1.0 IL',
        'n/a' => 'non établie (éteint ou modes auto)',
        'n/a (Manual Mode)' => 'non établie (mode manuel)',
      },
    },
   'ExternalFlashMode' => {
      Description => 'Segment de mesure flash esclave 3',
      PrintConv => {
        'Off' => 'hors service',
        'On, Auto' => 'en service, auto',
        'On, Contrast-control Sync' => 'en service, synchro contrôle des contrastes',
        'On, Flash Problem' => 'en service, problème de flash ?',
        'On, High-speed Sync' => 'en service, synchro haute vitesse',
        'On, Manual' => 'en service, manuel',
        'On, P-TTL Auto' => 'en service, auto P-TTL',
        'On, Wireless' => 'en service, sans cordon',
        'On, Wireless, High-speed Sync' => 'en service, sans cordon, synchro haute vitesse',
        'n/a - Off-Auto-Aperture' => 'n/c - auto-diaph hors service',
      },
    },
   'ExtraSamples' => 'Echantillons supplémentaires',
   'FNumber' => 'Nombre F',
   'FaxProfile' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'FaxRecvParams' => 'Paramètres de réception Fax',
   'FaxRecvTime' => 'Temps de réception Fax',
   'FaxSubAddress' => 'Sous-adresse Fax',
   'FileFormat' => 'Format de fichier',
   'FileModifyDate' => 'Date/heure de Modification du fichier',
   'FileName' => 'Nom de fichier',
   'FileNumberMemory' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FileNumberSequence' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FileSize' => 'Taille du fichier',
   'FileSource' => {
      Description => 'Source du fichier',
      PrintConv => {
        'Digital Camera' => 'appareil photo numérique',
        'Film Scanner' => 'scanner de film',
        'Reflection Print Scanner' => 'scanner par réflexion',
      },
    },
   'FileType' => 'Type de fichier',
   'FillOrder' => {
      Description => 'Ordre de remplissage',
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'Filter' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'FilterEffect' => {
      PrintConv => {
        'Green' => 'vert',
        'None' => 'aucune',
        'Off' => 'hors service',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
        'n/a' => 'non établie',
      },
    },
   'FilterEffectMonochrome' => {
      PrintConv => {
        'Green' => 'vert',
        'None' => 'aucune',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'FinderDisplayDuringExposure' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FixtureIdentifier' => 'Identificateur d\'installation',
   'Flash' => {
      Description => 'flash',
      PrintConv => {
        'Auto, Did not fire' => 'flash non déclenché, mode auto',
        'Auto, Did not fire, Red-eye reduction' => 'auto, flash non déclenché, mode réduction yeux rouges',
        'Auto, Fired' => 'flash déclenché, mode auto',
        'Auto, Fired, Red-eye reduction' => 'flash déclenché, mode auto, mode réduction yeux rouges, lumière renvoyée détectée',
        'Auto, Fired, Red-eye reduction, Return detected' => 'flash déclenché, mode auto, lumière renvoyée détectée, mode réduction yeux rouges',
        'Auto, Fired, Red-eye reduction, Return not detected' => 'flash déclenché, mode auto, lumière renvoyée non détectée, mode réduction yeux rouges',
        'Auto, Fired, Return detected' => 'flash déclenché, mode auto, lumière renvoyée détectée',
        'Auto, Fired, Return not detected' => 'flash déclenché, mode auto, lumière renvoyée non détectée',
        'Did not fire' => 'flash non déclenché',
        'Fired' => 'flash déclenché',
        'Fired, Red-eye reduction' => 'flash déclenché, mode réduction yeux rouges',
        'Fired, Red-eye reduction, Return detected' => 'flash déclenché, mode réduction yeux rouges, lumière renvoyée détectée',
        'Fired, Red-eye reduction, Return not detected' => 'flash déclenché, mode réduction yeux rouges, lumière renvoyée non détectée',
        'Fired, Return detected' => 'lumière renvoyée sur le capteur détectée',
        'Fired, Return not detected' => 'lumière renvoyée sur le capteur non détectée',
        'No Flash' => 'flash non déclenché',
        'No flash function' => 'pas de fonction flash',
        'Off' => 'hors service',
        'Off, Did not fire' => 'flash non déclenché, mode flash forcé',
        'Off, Did not fire, Return not detected' => 'éteint, flash non déclenché, lumière renvoyée non détectée',
        'Off, No flash function' => 'éteint, pas de fonction flash',
        'Off, Red-eye reduction' => 'Éteint, mode réduction yeux rouges',
        'On' => 'en service',
        'On, Did not fire' => 'hors service, flash non déclenché',
        'On, Fired' => 'flash déclenché, mode flash forcé',
        'On, Red-eye reduction' => 'flash déclenché, mode forcé, mode réduction yeux rouges',
        'On, Red-eye reduction, Return detected' => 'flash déclenché, mode forcé, mode réduction yeux rouges, lumière renvoyée détectée',
        'On, Red-eye reduction, Return not detected' => 'flash déclenché, mode forcé, mode réduction yeux rouges, lumière renvoyée non détectée',
        'On, Return detected' => 'flash déclenché, mode flash forcé, lumière renvoyée détectée',
        'On, Return not detected' => 'flash déclenché, mode flash forcé, lumière renvoyée non détectée',
      },
    },
   'FlashCommanderMode' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FlashControlMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'FlashDevice' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'FlashEnergy' => 'Énergie du flash',
   'FlashExposureComp' => 'Compensation d\'exposition au flash',
   'FlashExposureCompSet' => 'Réglage de compensation d\'exposition au flash',
   'FlashExposureLock' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FlashGroupAControlMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'FlashGroupBControlMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'FlashGroupCControlMode' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Off' => 'hors service',
      },
    },
   'FlashIntensity' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'FlashMeteringSegments' => 'Segments de mesure flash',
   'FlashMode' => {
      Description => 'Mode flash',
      PrintConv => {
        'Auto' => 'auto',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
        'Red-eye Reduction' => 'réduction yeux rouges',
        'Red-eye reduction' => 'réduction yeux rouges',
        'Unknown' => 'inconnu',
      },
    },
   'FlashModel' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'FlashOn' => {
      Description => 'flash',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FlashOptions' => {
      Description => 'Options de flash',
      PrintConv => {
        'Auto' => 'auto',
        'Auto, Red-eye reduction' => 'auto, réduction yeux rouges',
        'Normal' => 'normale',
        'Red-eye reduction' => 'réduction yeux rouges',
        'Slow-sync' => 'synchro lente',
        'Slow-sync, Red-eye reduction' => 'synchro lente, réduction yeux rouges',
        'Trailing-curtain Sync' => 'synchro 2e rideau',
        'Wireless (Control)' => 'sans cordon (contrôleur)',
        'Wireless (Master)' => 'sans cordon (maître)',
      },
    },
   'FlashOptions2' => {
      Description => 'Options de flash (2)',
      PrintConv => {
        'Auto' => 'auto',
        'Auto, Red-eye reduction' => 'auto, réduction yeux rouges',
        'Normal' => 'normale',
        'Red-eye reduction' => 'réduction yeux rouges',
        'Slow-sync' => 'synchro lente',
        'Slow-sync, Red-eye reduction' => 'synchro lente, réduction yeux rouges',
        'Trailing-curtain Sync' => 'synchro 2e rideau',
        'Wireless (Control)' => 'sans cordon (contrôleur)',
        'Wireless (Master)' => 'sans cordon (maître)',
      },
    },
   'FlashStatus' => {
      Description => 'Segment de mesure flash esclave 1',
      PrintConv => {
        'External, Did not fire' => 'externe, non déclenché',
        'External, Fired' => 'externe, déclenché',
        'Internal, Did not fire' => 'interne, non déclenché',
        'Internal, Fired' => 'interne, déclenché',
        'Off' => 'hors service',
      },
    },
   'FlashSyncSpeedAv' => {
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'FlashType' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'FlashWarning' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FlashpixVersion' => 'Version Flashpix supportée',
   'FlickerReduce' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'FocalLength' => 'Focale de l\'objectif',
   'FocalLength35efl' => 'Focale de l\'objectif',
   'FocalLengthIn35mmFormat' => 'Distance focale sur film 35 mm',
   'FocalPlaneResolutionUnit' => {
      Description => 'Unité de résolution de plan focal',
      PrintConv => {
        'None' => 'aucune',
        'inches' => 'pouce',
        'um' => 'µm (micromètre)',
      },
    },
   'FocalPlaneXResolution' => 'Résolution X du plan focal',
   'FocalPlaneYResolution' => 'Résolution Y du plan focal',
   'Focus' => {
      PrintConv => {
        'Manual' => 'manuelle',
      },
    },
   'FocusContinuous' => {
      PrintConv => {
        'Manual' => 'manuelle',
      },
    },
   'FocusMode' => {
      Description => 'Mode mise au point',
      PrintConv => {
        'AF-C' => 'AF-C (prise de vue en rafale)',
        'AF-S' => 'AF-S (prise de vue unique)',
        'Auto' => 'auto',
        'Infinity' => 'infini',
        'Macro' => 'macro',
        'Macro (1)' => 'macro (1)',
        'Macro (2)' => 'macro (2)',
        'Manual' => 'manuelle',
        'Normal' => 'normale',
        'Pan Focus' => 'hyperfocale',
        'Super Macro' => 'super Macro',
      },
    },
   'FocusMode2' => {
      Description => 'Mode mise au point 2',
      PrintConv => {
        'AF-C' => 'AF-C (prise de vue en rafale)',
        'AF-S' => 'AF-S (prise de vue unique)',
        'Manual' => 'manuelle',
      },
    },
   'FocusModeSetting' => {
      PrintConv => {
        'AF-C' => 'AF-C (prise de vue en rafale)',
        'AF-S' => 'AF-S (prise de vue unique)',
        'Manual' => 'manuelle',
      },
    },
   'FocusPosition' => 'Distance de mise au point',
   'FocusRange' => {
      PrintConv => {
        'Auto' => 'auto',
        'Infinity' => 'infini',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Normal' => 'normale',
        'Pan Focus' => 'hyperfocale',
        'Super Macro' => 'super Macro',
      },
    },
   'FocusTrackingLockOn' => {
      PrintConv => {
        'Normal' => 'normale',
        'Off' => 'hors service',
      },
    },
   'ForwardMatrix1' => 'Matrice Forward 1',
   'ForwardMatrix2' => 'Matrice Forward 2',
   'FrameNumber' => 'Numéro de vue',
   'FreeByteCounts' => 'Nombre d\'octets libres',
   'FreeOffsets' => 'Offsets libres',
   'FujiFlashMode' => {
      PrintConv => {
        'Auto' => 'auto',
        'Off' => 'hors service',
        'On' => 'en service',
        'Red-eye reduction' => 'réduction yeux rouges',
      },
    },
   'GIFVersion' => 'Version GIF',
   'GPSAltitude' => 'Altitude',
   'GPSAltitudeRef' => {
      Description => 'Référence d\'altitude',
      PrintConv => {
        'Above Sea Level' => 'niveau de la mer',
        'Below Sea Level' => 'référence niveau de la mer (valeur négative)',
      },
    },
   'GPSAreaInformation' => 'Nom de la zone GPS',
   'GPSDOP' => 'Précision de mesure',
   'GPSDateStamp' => 'Date GPS',
   'GPSDateTime' => 'Heure GPS (horloge atomique)',
   'GPSDestBearing' => 'Orientation de la destination',
   'GPSDestBearingRef' => {
      Description => 'Référence de l\'orientation de la destination',
      PrintConv => {
        'Magnetic North' => 'direction magnétique',
        'True North' => 'direction vraie',
      },
    },
   'GPSDestDistance' => 'Distance à la destination',
   'GPSDestDistanceRef' => {
      Description => 'Référence de la distance à la destination',
      PrintConv => {
        'Kilometers' => 'kilomètres',
        'Miles' => 'miles',
        'Nautical Miles' => 'noeuds',
      },
    },
   'GPSDestLatitude' => 'Latitude de destination',
   'GPSDestLatitudeRef' => {
      Description => 'Référence de la latitude de destination',
      PrintConv => {
        'North' => 'latitude nord',
        'South' => 'latitude sud',
      },
    },
   'GPSDestLongitude' => 'Longitude de destination',
   'GPSDestLongitudeRef' => {
      Description => 'Référence de la longitude de destination',
      PrintConv => {
        'East' => 'longitude est',
        'West' => 'longitude ouest',
      },
    },
   'GPSDifferential' => {
      Description => 'Correction différentielle GPS',
      PrintConv => {
        'Differential Corrected' => 'correction différentielle appliquée',
        'No Correction' => 'mesure sans correction différentielle',
      },
    },
   'GPSImgDirection' => 'Direction de l\'image',
   'GPSImgDirectionRef' => {
      Description => 'Référence pour la direction l\'image',
      PrintConv => {
        'Magnetic North' => 'direction magnétique',
        'True North' => 'direction vraie',
      },
    },
   'GPSLatitude' => 'Latitude',
   'GPSLatitudeRef' => {
      Description => 'Latitude nord ou sud',
      PrintConv => {
        'North' => 'latitude nord',
        'South' => 'latitude sud',
      },
    },
   'GPSLongitude' => 'Longitude',
   'GPSLongitudeRef' => {
      Description => 'Longitude est ou ouest',
      PrintConv => {
        'East' => 'longitude est',
        'West' => 'longitude ouest',
      },
    },
   'GPSMapDatum' => 'Données de surveillance géodésique utilisées',
   'GPSMeasureMode' => {
      Description => 'Mode de mesure GPS',
      PrintConv => {
        '2-D' => 'mesure à deux dimensions',
        '2-Dimensional' => 'mesure à deux dimensions',
        '2-Dimensional Measurement' => 'mesure à deux dimensions',
        '3-D' => 'mesure à trois dimensions',
        '3-Dimensional' => 'mesure à trois dimensions',
        '3-Dimensional Measurement' => 'mesure à trois dimensions',
      },
    },
   'GPSProcessingMethod' => 'Nom de la méthode de traitement GPS',
   'GPSSatellites' => 'Satellites GPS utilisés pour la mesure',
   'GPSSpeed' => 'Vitesse du récepteur GPS',
   'GPSSpeedRef' => {
      Description => 'Unité de vitesse',
      PrintConv => {
        'km/h' => 'kilomètres par heure',
        'knots' => 'noeuds',
        'mph' => 'miles par heure',
      },
    },
   'GPSStatus' => {
      Description => 'État du récepteur GPS',
      PrintConv => {
        'Measurement Active' => 'mesure active',
        'Measurement Void' => 'mesure vide',
      },
    },
   'GPSTimeStamp' => 'Heure GPS (horloge atomique)',
   'GPSTrack' => 'Direction de déplacement',
   'GPSTrackRef' => {
      Description => 'Référence pour la direction de déplacement',
      PrintConv => {
        'Magnetic North' => 'direction magnétique',
        'True North' => 'direction vraie',
      },
    },
   'GPSVersionID' => 'Version de tag GPS',
   'GainControl' => {
      Description => 'Contrôle de gain',
      PrintConv => {
        'High gain down' => 'forte atténuation',
        'High gain up' => 'fort gain',
        'Low gain down' => 'faible atténuation',
        'Low gain up' => 'faible gain',
        'None' => 'aucune',
      },
    },
   'GammaCompensatedValue' => 'Valeur de compensation gamma',
   'GeoTiffAsciiParams' => 'Tag de paramètres Ascii Géo',
   'GeoTiffDirectory' => 'Tag de répertoire de clé Géo',
   'GeoTiffDoubleParams' => 'Tag de paramètres doubles Géo',
   'GrayResponseCurve' => 'Courbe de réponse du gris',
   'GrayResponseUnit' => {
      Description => 'Unité de réponse en Gris',
      PrintConv => {
        '0.0001' => 'le nombre représente des millièmes d\'unité',
        '0.001' => 'le nombre représente des centièmes d\'unité',
        '0.1' => 'le nombre représente des dixièmes d\'unité',
        '1e-05' => 'le nombre représente des dix-millièmes d\'unité',
        '1e-06' => 'le nombre représente des cent-millièmes d\'unité',
      },
    },
   'GrayTRC' => 'Courbe de reproduction des tons gris',
   'GreenMatrixColumn' => 'Colonne de matrice verte',
   'GreenTRC' => 'Courbe de reproduction des tons verts',
   'GridDisplay' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'HCUsage' => 'Usage HC',
   'HalftoneHints' => 'Indications sur les demi-treintes',
   'Headline' => 'Gros titre',
   'HighISONoiseReduction' => {
      Description => 'Réduction du bruit en haute sensibilité ISO',
      PrintConv => {
        'Low' => 'doux',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
        'Standard' => 'standard',
        'Strong' => 'forte',
        'Weak' => 'faible',
        'Weakest' => 'la plus faible',
      },
    },
   'HighlightTonePriority' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'HometownCity' => 'Ville de résidence',
   'HometownCityCode' => 'Code ville de résidence',
   'HometownDST' => {
      Description => 'Heure d\'été de résidence',
      PrintConv => {
        'No' => 'non',
        'Yes' => 'oui',
      },
    },
   'HostComputer' => 'Ordinateur hôte',
   'ICC_Profile' => 'Profil de couleur ICC d\'entrée',
   'ID3Size' => 'Taille ID3',
   'IPTC-NAA' => 'Métadonnées IPTC-NAA',
   'IPTCBitsPerSample' => 'Nombre de bits par échantillon',
   'IPTCImageHeight' => 'Nombre de lignes',
   'IPTCImageRotation' => {
      Description => 'Rotation d\'image',
      PrintConv => {
        '0' => 'pas de rotation',
        '180' => 'rotation de 180 degrés',
        '270' => 'rotation de 270 degrés',
        '90' => 'rotation de 90 degrés',
      },
    },
   'IPTCImageWidth' => 'Pixels par ligne',
   'IPTCPictureNumber' => 'Numéro d\'image',
   'IPTCPixelHeight' => 'Taille de pixel perpendiculairement à la direction de scan',
   'IPTCPixelWidth' => 'Taille de pixel dans la direction de scan',
   'ISO' => 'Sensibilité ISO',
   'ISOExpansion' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ISOExpansion2' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'ISOFloor' => 'Seuil ISO',
   'ISOSetting' => {
      PrintConv => {
        'Auto' => 'auto',
        'Manual' => 'manuelle',
      },
    },
   'IT8Header' => 'En-tête IT8',
   'Illumination' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ImageAreaOffset' => 'Décalage de zone d\'image',
   'ImageAuthentication' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ImageColorIndicator' => 'Indicateur de couleur d\'image',
   'ImageColorValue' => 'Valeur de couleur d\'image',
   'ImageDepth' => 'Profondeur d\'image',
   'ImageDescription' => 'Description d\'image',
   'ImageDustOff' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ImageHeight' => 'Hauteur d\'image',
   'ImageHistory' => 'Historique de l\'image',
   'ImageID' => 'ID d\'image',
   'ImageLayer' => 'Couche image',
   'ImageNumber' => 'Numéro d\'image',
   'ImageOrientation' => {
      Description => 'Orientation d\'image',
      PrintConv => {
        'Landscape' => 'Paysage',
        'Portrait' => 'portrait',
        'Square' => 'Carré',
      },
    },
   'ImageProcessing' => {
      Description => 'Traitement de l\'image',
      PrintConv => {
        'Color Filter' => 'filtre de couleur',
        'Cropped' => 'recadré',
        'Digital Filter' => 'filtre numérique',
        'Frame Synthesis?' => 'Synthèse de vue ?',
        'Unprocessed' => 'aucun',
      },
    },
   'ImageProcessingCount' => 'Compteur de traitement d\'image',
   'ImageQuality' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'ImageReview' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ImageSourceData' => 'Données source d\'image',
   'ImageStabilization' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ImageTone' => {
      Description => 'Ton de l\'image',
      PrintConv => {
        'Bright' => 'brillant',
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'Natural' => 'naturel',
        'Portrait' => 'portrait',
        'Vibrant' => 'vibrant',
      },
    },
   'ImageType' => 'Type d\'image',
   'ImageUniqueID' => 'Identificateur unique d\'image',
   'ImageWidth' => 'Largeur d\'image',
   'Indexed' => 'Indexé',
   'InkNames' => 'Nom des encres',
   'InkSet' => 'Encrage',
   'IntensityStereo' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'IntergraphMatrix' => 'Tag de matrice intergraphe',
   'Interlace' => 'Entrelacement',
   'InternalFlash' => {
      PrintConv => {
        'Fired' => 'flash déclenché',
        'Manual' => 'manuelle',
        'No' => 'flash non déclenché',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'InternalFlashMode' => {
      Description => 'Segment de mesure flash esclave 2',
      PrintConv => {
        'Off, (Unknown 0xf4)' => 'hors service (inconnue 0xF4?)',
        'Off, Auto' => 'hors service, auto',
        'Off, Auto, Red-eye reduction' => 'hors service, auto, réduction yeux rouges',
        'Off, Normal' => 'hors service, normal',
        'Off, Red-eye reduction' => 'hors service, réduction yeux rouges',
        'Off, Slow-sync' => 'hors service, synchro lente',
        'Off, Slow-sync, Red-eye reduction' => 'hors service, synchro lente, réduction yeux rouges',
        'Off, Trailing-curtain Sync' => 'hors service, synchro 2e rideau',
        'Off, Wireless (Control)' => 'hors service, sans cordon (contrôleur)',
        'Off, Wireless (Master)' => 'hors service, sans cordon (maître)',
        'On' => 'en service',
        'On, Auto' => 'en service, auto',
        'On, Auto, Red-eye reduction' => 'en service, auto, réduction yeux rouges',
        'On, Red-eye reduction' => 'en service, réduction yeux rouges',
        'On, Slow-sync' => 'en service, synchro lente',
        'On, Slow-sync, Red-eye reduction' => 'en service, synchro lente, réduction yeux rouges',
        'On, Trailing-curtain Sync' => 'en service, synchro 2e rideau',
        'On, Wireless (Control)' => 'en service, sans cordon (contrôleur)',
        'On, Wireless (Master)' => 'en service, sans cordon (maître)',
        'n/a - Off-Auto-Aperture' => 'n/c - auto-diaph hors service',
      },
    },
   'InternalFlashStrength' => 'Segment de mesure flash esclave 4',
   'InternalSerialNumber' => 'Numéro de série interne ?',
   'InteropIndex' => {
      Description => 'Identification d\'interopérabilité',
      PrintConv => {
        'R03 - DCF option file (Adobe RGB)' => 'R03: fichier d\'option DCF (Adobe RGB)',
        'R98 - DCF basic file (sRGB)' => 'R98: fichier de base DCF (sRGB)',
        'THM - DCF thumbnail file' => 'THM: fichier de miniature DCF',
      },
    },
   'InteropVersion' => 'Version d\'interopérabilité',
   'JFIFVersion' => 'Version JFIF',
   'JPEGACTables' => 'Tableaux AC JPEG',
   'JPEGDCTables' => 'Tableaux DC JPEG',
   'JPEGLosslessPredictors' => 'Prédicteurs JPEG sans perte',
   'JPEGPointTransforms' => 'Transformations de point JPEG',
   'JPEGProc' => 'Proc JPEG',
   'JPEGQTables' => 'Tableaux Q JPEG',
   'JPEGRestartInterval' => 'Intervalle de redémarrage JPEG',
   'JPEGTables' => 'Tableaux JPEG',
   'JobID' => 'ID de la tâche',
   'JpgRecordedPixels' => {
      Description => 'Pixels enregistrés JPEG',
      PrintConv => {
        '10 MP' => '10 Mpx',
        '2 MP' => '2 Mpx',
        '6 MP' => '6 Mpx',
      },
    },
   'Keywords' => 'Mots-clés',
   'LC1' => 'Données d\'objectif',
   'LC10' => 'Données mv\' nv\'',
   'LC11' => 'Données AVC 1/EXP',
   'LC12' => 'Données mv1 Avminsif',
   'LC14' => 'Données UNT_12 UNT_6',
   'LC15' => 'Données d\'adaptation de flash incorporé',
   'LC2' => 'Code de distance',
   'LC3' => 'Valeur K',
   'LC4' => 'Données de correction d\'aberration à courte distance',
   'LC5' => 'Données de correction d\'aberration chromatique',
   'LC6' => 'Données d\'aberration d\'ouverture',
   'LC7' => 'Données de condition minimale de déclenchement AF',
   'LCDIllumination' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LCDIlluminationDuringBulb' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LCHEditor' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LanguageIdentifier' => 'Identificateur de langue',
   'LensFStops' => 'Nombre de diaphs de l\'objectif',
   'LensKind' => 'Sorte d\'objectif / version (LC0)',
   'LensType' => 'Sorte d\'objectif',
   'LicenseType' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'LightReading' => 'Lecture de la lumière',
   'LightSource' => {
      Description => 'Source de lumière',
      PrintConv => {
        'Cloudy' => 'temps nuageux',
        'Cool White Fluorescent' => 'fluorescente type soft',
        'Day White Fluorescent' => 'fluorescente type blanc',
        'Daylight' => 'lumière du jour',
        'Daylight Fluorescent' => 'fluorescente type jour',
        'Fine Weather' => 'beau temps',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'ISO Studio Tungsten' => 'Tungstène studio ISO',
        'Other' => 'autre source de lumière',
        'Shade' => 'ombre',
        'Standard Light A' => 'lumière standard A',
        'Standard Light B' => 'lumière standard B',
        'Standard Light C' => 'lumière standard C',
        'Tungsten' => 'tungstène (lumière incandescente)',
        'Unknown' => 'inconnue',
        'White Fluorescent' => 'fluorescent blanc',
      },
    },
   'LightSourceSpecial' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LinearResponseLimit' => 'Limite de réponse linéaire',
   'LinearizationTable' => 'Table de linéarisation',
   'LiveViewShooting' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LocalizedCameraModel' => 'Nom traduit de modèle d\'appareil',
   'LongExposureNoiseReduction' => {
      PrintConv => {
        'Auto' => 'auto',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'LookupTable' => 'Table de correspondance',
   'LoopStyle' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'LuminanceNoiseReduction' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
      },
    },
   'MIEVersion' => 'Version MIE',
   'MIMEType' => 'Type MIME',
   'MSStereo' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Macro' => {
      PrintConv => {
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
        'Super Macro' => 'super Macro',
      },
    },
   'MacroMode' => {
      PrintConv => {
        'Macro' => 'macro',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
        'Super Macro' => 'super Macro',
      },
    },
   'MainDialExposureComp' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Make' => 'Fabricant',
   'MakeAndModel' => 'Fabricant et modèle',
   'MakerNoteSafety' => {
      Description => 'Sécurité de note de fabricant',
      PrintConv => {
        'Safe' => 'sûre',
        'Unsafe' => 'pas sûre',
      },
    },
   'ManualFlashOutput' => {
      PrintConv => {
        'Low' => 'doux',
        'n/a' => 'non établie',
      },
    },
   'ManufactureDate' => 'Date de fabrication ?',
   'MaskedAreas' => 'Zones masquées',
   'MasterDocumentID' => 'ID du document maître',
   'Matteing' => 'Matité',
   'MaxAperture' => 'Données Avmin',
   'MaxApertureValue' => 'Ouverture maximale de l\'objectif',
   'MaxSampleValue' => 'Valeur maxi d\'échantillon',
   'MaxVal' => 'Valeur Max',
   'MaximumDensityRange' => 'Etendue maximale de densité',
   'MeasurementBacking' => 'Support de mesure',
   'MeasurementFlare' => 'Flare de mesure',
   'MeasurementGeometry' => {
      Description => 'Géométrie de mesure',
      PrintConv => {
        '0/45 or 45/0' => '0/45 ou 45/0',
        '0/d or d/0' => '0/d ou d/0',
      },
    },
   'MeasurementIlluminant' => 'Illuminant de mesure',
   'MeasurementObserver' => 'Observateur de mesure',
   'MediaBlackPoint' => 'Point noir moyen',
   'MediaWhitePoint' => 'Point blanc moyen',
   'MenuButtonDisplayPosition' => {
      PrintConv => {
        'Top' => 'haut',
      },
    },
   'MenuButtonReturn' => {
      PrintConv => {
        'Top' => 'haut',
      },
    },
   'Metering' => {
      PrintConv => {
        'Spot' => 'spot',
      },
    },
   'MeteringMode' => {
      Description => 'Mode de mesure',
      PrintConv => {
        'Average' => 'moyenne',
        'Center-weighted average' => 'centrale pondérée',
        'Multi-segment' => 'multizone',
        'Multi-spot' => 'multi-spot',
        'Other' => 'autre',
        'Partial' => 'partielle',
        'Spot' => 'spot',
        'Unknown' => 'inconnu',
      },
    },
   'MeteringMode2' => {
      Description => 'Mode de mesure 2',
      PrintConv => {
        'Multi-segment' => 'multizone',
      },
    },
   'MeteringMode3' => {
      Description => 'Mode de mesure (3)',
      PrintConv => {
        'Multi-segment' => 'multizone',
      },
    },
   'MinAperture' => 'Ouverture mini',
   'MinSampleValue' => 'Valeur mini d\'échantillon',
   'MinoltaQuality' => {
      Description => 'Qualité',
      PrintConv => {
        'Normal' => 'normale',
        'Standard' => 'standard',
      },
    },
   'Model' => 'Modèle d\'appareil photo',
   'Model2' => 'Modèle d\'équipement de prise de vue (2)',
   'ModelTiePoint' => 'Tag de lien d modèle',
   'ModelTransform' => 'Tag de transformation de modèle',
   'ModelingFlash' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ModifiedPictureStyle' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'None' => 'aucune',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'ModifiedSaturation' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'ModifiedSharpnessFreq' => {
      PrintConv => {
        'Low' => 'doux',
        'Standard' => 'standard',
        'n/a' => 'non établie',
      },
    },
   'ModifiedToneCurve' => {
      PrintConv => {
        'Manual' => 'manuelle',
        'Standard' => 'standard',
      },
    },
   'ModifiedWhiteBalance' => {
      PrintConv => {
        'Auto' => 'auto',
        'Cloudy' => 'temps nuageux',
        'Daylight' => 'lumière du jour',
        'Daylight Fluorescent' => 'fluorescente type jour',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'Shade' => 'ombre',
        'Tungsten' => 'tungstène (lumière incandescente)',
      },
    },
   'ModifyDate' => 'Date de modification de fichier',
   'MoireFilter' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'MonochromeFilterEffect' => {
      PrintConv => {
        'Green' => 'vert',
        'None' => 'aucune',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'MonochromeToningEffect' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'None' => 'aucune',
      },
    },
   'MultiExposureAutoGain' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'MultiExposureMode' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'MultipleExposureSet' => {
      Description => 'Exposition multiple',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Mute' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'MyColorMode' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'NDFilter' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'NEFCompression' => {
      PrintConv => {
        'Uncompressed' => 'non compressé',
      },
    },
   'NamedColor2' => 'Couleur nommée 2',
   'NativeDisplayInfo' => 'Information sur l\'affichage natif',
   'NewsPhotoVersion' => 'Version d\'enregistrement News Photo',
   'Noise' => 'Bruit',
   'NoiseFilter' => {
      PrintConv => {
        'Low' => 'doux',
        'Off' => 'hors service',
        'Standard' => 'standard',
      },
    },
   'NoiseReduction' => {
      Description => 'Réduction du bruit',
      PrintConv => {
        'Auto' => 'auto',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
        'Standard' => 'standard',
      },
    },
   'NoiseReductionApplied' => 'Réduction de bruit appliquée',
   'NominalMaxAperture' => 'Ouverture maxi nominal',
   'NominalMinAperture' => 'Ouverture mini nominal',
   'NumIndexEntries' => 'Nombre d\'entrées d\'index',
   'NumberofInks' => 'Nombre d\'encres',
   'OPIProxy' => 'Proxy OPI',
   'ObjectAttributeReference' => 'Genre intellectuel',
   'ObjectCycle' => {
      Description => 'Cycle d\'objet',
      PrintConv => {
        'Both Morning and Evening' => 'les deux',
        'Evening' => 'soir',
        'Morning' => 'matin',
      },
    },
   'ObjectFileType' => {
      PrintConv => {
        'None' => 'aucune',
        'Unknown' => 'inconnu',
      },
    },
   'ObjectName' => 'Titre',
   'ObjectPreviewData' => 'Données de la miniature de l\'objet',
   'ObjectPreviewFileFormat' => 'Format de fichier de la miniature de l\'objet',
   'ObjectPreviewFileVersion' => 'Version de format de fichier de la miniature de l\'objet',
   'ObjectTypeReference' => 'Référence de type d\'objet',
   'OffsetSchema' => 'Schéma de décalage',
   'OldSubfileType' => 'Type du sous-fichier',
   'OneTouchWB' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'OpticalZoomMode' => {
      PrintConv => {
        'Standard' => 'standard',
      },
    },
   'OpticalZoomOn' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Opto-ElectricConvFactor' => 'Facteur de conversion optoélectrique',
   'Orientation' => {
      Description => 'Orientation de l\'image',
      PrintConv => {
        'Horizontal (normal)' => '0° (haut/gauche)',
        'Mirror horizontal' => '0° (haut/droit)',
        'Mirror horizontal and rotate 270 CW' => '90° sens horaire (gauche/haut)',
        'Mirror horizontal and rotate 90 CW' => '90° sens antihoraire (droit/bas)',
        'Mirror vertical' => '180° (bas/gauche)',
        'Rotate 180' => '180° (bas/droit)',
        'Rotate 270 CW' => '90° sens horaire (gauche/bas)',
        'Rotate 90 CW' => '90° sens antihoraire (droit/haut)',
      },
    },
   'OriginalRawFileData' => 'Données du fichier raw d\'origine',
   'OriginalRawFileDigest' => 'Digest du fichier raw original',
   'OriginalRawFileName' => 'Nom du fichier raw d\'origine',
   'OriginalTransmissionReference' => 'Identificateur de tâche',
   'OriginatingProgram' => 'Programme d\'origine',
   'OutputResponse' => 'Réponse de sortie',
   'OwnerID' => 'ID du propriétaire',
   'PEFVersion' => 'Version PEF',
   'Padding' => 'Remplissage',
   'PageName' => 'Nom de page',
   'PageNumber' => 'Page numéro',
   'PentaxImageSize' => {
      Description => 'Taille d\'image Pentax',
      PrintConv => {
        '2304x1728 or 2592x1944' => '2304 x 1728 ou 2592 x 1944',
        '2560x1920 or 2304x1728' => '2560 x 1920 ou 2304 x 1728',
        '2816x2212 or 2816x2112' => '2816 x 2212 ou 2816 x 2112',
        '3008x2008 or 3040x2024' => '3008 x 2008 ou 3040 x 2024',
        'Full' => 'pleine',
      },
    },
   'PentaxModelID' => 'Modèle Pentax',
   'PentaxVersion' => 'Version Pentax',
   'PhotoEffect' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'PhotoEffects' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'PhotoEffectsType' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'PhotometricInterpretation' => {
      Description => 'Schéma de pixel',
      PrintConv => {
        'BlackIsZero' => 'zéro pour noir',
        'Color Filter Array' => 'CFA (Matrice de filtre de couleur)',
        'Pixar LogL' => 'CIE Log2(L) (Log luminance)',
        'Pixar LogLuv' => 'CIE Log2(L)(u\',v\') (Log luminance et chrominance)',
        'RGB' => 'RVB',
        'RGB Palette' => 'palette RVB',
        'Transparency Mask' => 'masque de transparence',
        'WhiteIsZero' => 'zéro pour blanc',
      },
    },
   'PhotoshopFormat' => {
      PrintConv => {
        'Standard' => 'standard',
      },
    },
   'PictureControl' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'PictureControlActive' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'PictureFinish' => {
      PrintConv => {
        'Monochrome' => 'monochrome',
        'Natural' => 'naturel',
        'Night Scene' => 'nocturne',
        'Portrait' => 'portrait',
      },
    },
   'PictureMode' => {
      Description => 'Mode d\'image',
      PrintConv => {
        'Aperture-priority AE' => 'priorité ouverture',
        'Auto' => 'auto',
        'Landscape' => 'paysage',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Night Scene' => 'nocturne',
        'Portrait' => 'portrait',
        'Shutter speed priority AE' => 'priorité vitesse',
        'Snow' => 'neige',
        'Sunset' => 'coucher de soleil',
        'Text' => 'texte',
      },
    },
   'PictureMode2' => {
      Description => 'Mode d\'image 2',
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Aperture Priority, Off-Auto-Aperture' => 'priorité ouverture (auto-diaph hors service)',
        'Auto PICT' => 'image auto',
        'Bulb' => 'pose B',
        'Bulb, Off-Auto-Aperture' => 'pose B (auto-diaph hors service)',
        'Flash X-Sync Speed AE' => 'expo auto, vitesse de synchro flash X',
        'Green Mode' => 'mode vert',
        'Manual' => 'manuelle',
        'Manual, Off-Auto-Aperture' => 'manuel (auto-diaph hors service)',
        'Program AE' => 'programme AE',
        'Program Av Shift' => 'décalage programme Av',
        'Program Tv Shift' => 'décalage programme Tv',
        'Scene Mode' => 'mode scène',
        'Sensitivity Priority AE' => 'expo auto, priorité sensibilité',
        'Shutter & Aperture Priority AE' => 'expo auto, priorité vitesse et ouverture',
        'Shutter Speed Priority' => 'priorité vitesse',
      },
    },
   'PictureModeBWFilter' => {
      PrintConv => {
        'Green' => 'vert',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
        'n/a' => 'non établie',
      },
    },
   'PictureModeTone' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'n/a' => 'non établie',
      },
    },
   'PictureStyle' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'None' => 'aucune',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'PixelIntensityRange' => 'Intervalle d\'intensité de pixel',
   'PixelScale' => 'Tag d\'échelle de pixel modèle',
   'PixelUnits' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'PlanarConfiguration' => {
      Description => 'Arrangement des données image',
      PrintConv => {
        'Chunky' => 'format « chunky » (entrelacé)',
        'Planar' => 'format « planar »',
      },
    },
   'PowerSource' => {
      Description => 'Source d\'alimentation',
      PrintConv => {
        'Body Battery' => 'accu boîtier',
        'External Power Supply' => 'alimentation externe',
        'Grip Battery' => 'accu poignée',
      },
    },
   'Predictor' => {
      Description => 'Prédicteur',
      PrintConv => {
        'Horizontal differencing' => 'différentiation horizontale',
        'None' => 'aucun schéma de prédicteur utilisé avant l\'encodage',
      },
    },
   'Preview0' => 'Aperçu 0',
   'Preview1' => 'Aperçu 1',
   'Preview2' => 'Aperçu 2',
   'PreviewApplicationName' => 'Nom de l\'application d\'aperçu',
   'PreviewApplicationVersion' => 'Version de l\'application d\'aperçu',
   'PreviewColorSpace' => {
      Description => 'Espace de couleur de l\'aperçu',
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'PreviewDateTime' => 'Horodatage d\'aperçu',
   'PreviewImage' => 'Aperçu',
   'PreviewImageBorders' => 'Limites d\'image miniature',
   'PreviewImageLength' => 'Longueur d\'image miniature',
   'PreviewImageSize' => 'Taille d\'image miniature',
   'PreviewImageStart' => 'Début d\'image miniature',
   'PreviewQuality' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'PreviewSettingsDigest' => 'Digest des réglages d\'aperçu',
   'PreviewSettingsName' => 'Nom des réglages d\'aperçu',
   'PrimaryChromaticities' => 'Chromaticité des couleurs primaires',
   'PrimaryPlatform' => 'Plateforme primaire',
   'ProcessingSoftware' => 'Logiciel de traitement',
   'ProductID' => 'ID de produit',
   'ProductionCode' => 'L\'appareil est passé en SAV ?',
   'ProfileCMMType' => 'Type de profil CMM',
   'ProfileCalibrationSig' => 'Signature de calibration de profil',
   'ProfileClass' => {
      Description => 'Classe de profil',
      PrintConv => {
        'Abstract Profile' => 'profil de résumé',
        'ColorSpace Conversion Profile' => 'profil de conversion d\'espace de couleur',
        'DeviceLink Profile' => 'profil de liaison',
        'Display Device Profile' => 'profil d\'appareil d\'affichage',
        'Input Device Profile' => 'profil d\'appareil d\'entrée',
        'NamedColor Profile' => 'profil de couleur nommée',
        'Nikon Input Device Profile (NON-STANDARD!)' => 'profil Nikon ("nkpf")',
        'Output Device Profile' => 'profil d\'appareil de sortie',
      },
    },
   'ProfileConnectionSpace' => 'Espace de connexion de profil',
   'ProfileCopyright' => 'Copyright du profil',
   'ProfileCreator' => 'Créateur du profil',
   'ProfileDateTime' => 'Horodatage du profil',
   'ProfileDescription' => 'Description du profil',
   'ProfileDescriptionML' => 'Description de profil ML',
   'ProfileEmbedPolicy' => {
      Description => 'Règles d\'usage du profil incluses',
      PrintConv => {
        'Allow Copying' => 'Permet la copie',
        'Embed if Used' => 'Inclus si utilisé',
        'Never Embed' => 'Jamais inclus',
        'No Restrictions' => 'pas de restriction',
      },
    },
   'ProfileFileSignature' => 'Signature de fichier de profil',
   'ProfileHueSatMapData1' => 'Données de profil Teinte Sat. 1',
   'ProfileHueSatMapData2' => 'Données de profil Teinte Sat. 2',
   'ProfileHueSatMapDims' => 'Divisions de teinte',
   'ProfileID' => 'ID du profil',
   'ProfileLookTableData' => 'Données de table de correspondance de profil',
   'ProfileLookTableDims' => 'Divisions de teinte',
   'ProfileName' => 'Nom du profil',
   'ProfileSequenceDesc' => 'Description de séquence du profil',
   'ProfileToneCurve' => 'Courbe de ton du profil',
   'ProfileVersion' => 'Version de profil',
   'ProgramLine' => {
      Description => 'Ligne de programme',
      PrintConv => {
        'Depth' => 'Priorité profondeur de champ',
        'Hi Speed' => 'Priorité grande vitesse',
        'MTF' => 'Priorité FTM',
        'Normal' => 'normale',
      },
    },
   'ProgramMode' => {
      PrintConv => {
        'None' => 'aucune',
        'Portrait' => 'portrait',
        'Sunset' => 'coucher de soleil',
        'Text' => 'texte',
      },
    },
   'ProgramVersion' => 'Version du programme',
   'Province-State' => 'Région / Département',
   'Quality' => {
      Description => 'Qualité',
      PrintConv => {
        'Best' => 'la meilleure',
        'Better' => 'meilleure',
        'Good' => 'bonne',
        'Low' => 'doux',
        'Normal' => 'normale',
        'Standard' => 'standard',
      },
    },
   'QualityMode' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'QuantizationMethod' => {
      Description => 'Méthode de quantification',
      PrintConv => {
        'Color Space Specific' => 'Spécifique à l\'espace de couleur',
        'Compression Method Specific' => 'Spécifique à la méthode de compression',
        'Gamma Compensated' => 'Compensée gamma',
        'IPTC Ref B' => 'IPTC réf "B"',
        'Linear Density' => 'Densité linéaire',
        'Linear Dot Percent' => 'Pourcentage de point linéaire',
        'Linear Reflectance/Transmittance' => 'Réflectance/transmittance linéaire',
      },
    },
   'QuickShot' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'RAFVersion' => 'Version RAF',
   'RasterPadding' => 'Remplissage raster',
   'RasterizedCaption' => 'Légende rastérisée',
   'Rating' => 'Évaluation',
   'RatingPercent' => 'Rapport en pourcentage',
   'RawAndJpgRecording' => {
      Description => 'Enregistrement RAW et JPEG',
      PrintConv => {
        'JPEG (Best)' => 'JPEG (le meilleur)',
        'JPEG (Better)' => 'JPEG (meilleur)',
        'JPEG (Good)' => 'JPEG (bon)',
        'RAW (DNG, Best)' => 'RAW (DNG, le meilleur)',
        'RAW (DNG, Better)' => 'RAW (DNG, meilleur)',
        'RAW (DNG, Good)' => 'RAW (DNG, bon)',
        'RAW (PEF, Best)' => 'RAW (PEF, le meilleur)',
        'RAW (PEF, Better)' => 'RAW (PEF, meilleur)',
        'RAW (PEF, Good)' => 'RAW (PEF, bon)',
        'RAW+JPEG (DNG, Best)' => 'RAW+JPEG (DNG, le meilleur)',
        'RAW+JPEG (DNG, Better)' => 'RAW+JPEG (DNG, meilleur)',
        'RAW+JPEG (DNG, Good)' => 'RAW+JPEG (DNG, bon)',
        'RAW+JPEG (PEF, Best)' => 'RAW+JPEG (PEF, le meilleur)',
        'RAW+JPEG (PEF, Better)' => 'RAW+JPEG (PEF, meilleur)',
        'RAW+JPEG (PEF, Good)' => 'RAW+JPEG (PEF, bon)',
      },
    },
   'RawDataUniqueID' => 'ID unique de données brutes',
   'RawDevAutoGradation' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'RawDevPMPictureTone' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
      },
    },
   'RawDevPM_BWFilter' => {
      PrintConv => {
        'Green' => 'vert',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'RawDevPictureMode' => {
      PrintConv => {
        'Natural' => 'naturel',
      },
    },
   'RawImageDigest' => 'Digest d\'image brute',
   'RawImageSize' => 'Taille d\'image RAW',
   'RawJpgQuality' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'RecordMode' => {
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Manual' => 'manuelle',
        'Shutter Priority' => 'priorité vitesse',
      },
    },
   'RecordingMode' => {
      PrintConv => {
        'Auto' => 'auto',
        'Landscape' => 'paysage',
        'Manual' => 'manuelle',
        'Night Scene' => 'nocturne',
        'Portrait' => 'portrait',
      },
    },
   'RedBalance' => 'Balance rouge',
   'RedEyeCorrection' => {
      PrintConv => {
        'Automatic' => 'auto',
        'Off' => 'hors service',
      },
    },
   'RedEyeReduction' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'RedMatrixColumn' => 'Colonne de matrice rouge',
   'RedTRC' => 'Courbe de reproduction des tons rouges',
   'ReductionMatrix1' => 'Matrice de réduction 1',
   'ReductionMatrix2' => 'Matrice de réduction 2',
   'ReferenceBlackWhite' => 'Paire de valeurs de référence noir et blanc',
   'ReferenceDate' => 'Date de référence',
   'ReferenceNumber' => 'Numéro de référence',
   'ReferenceService' => 'Service de référence',
   'RelatedImageFileFormat' => 'Format de fichier image apparenté',
   'RelatedImageHeight' => 'Hauteur d\'image apparentée',
   'RelatedImageWidth' => 'Largeur d\'image apparentée',
   'RelatedSoundFile' => 'Fichier audio apparenté',
   'ReleaseDate' => 'Date de version',
   'ReleaseTime' => 'Heure de version',
   'RenderingIntent' => {
      Description => 'Intention de rendu',
      PrintConv => {
        'ICC-Absolute Colorimetric' => 'colorimétrique absolu',
        'Media-Relative Colorimetric' => 'colorimétrique relatif',
        'Perceptual' => 'perceptif',
        'Saturation' => 'saturation',
      },
    },
   'ResampleParamsQuality' => {
      PrintConv => {
        'Low' => 'doux',
      },
    },
   'ResolutionUnit' => {
      Description => 'Unité de résolution en X et Y',
      PrintConv => {
        'None' => 'aucune',
        'inches' => 'pouce',
      },
    },
   'RowInterleaveFactor' => 'Facteur d\'entrelacement des lignes',
   'RowsPerStrip' => 'Nombre de rangées par bande',
   'SMaxSampleValue' => 'Valeur maxi d\'échantillon S',
   'SMinSampleValue' => 'Valeur mini d\'échantillon S',
   'SPIFFVersion' => 'Version SPIFF',
   'SRAWQuality' => {
      PrintConv => {
        'n/a' => 'non établie',
      },
    },
   'SRActive' => {
      Description => 'Réduction de bougé active',
      PrintConv => {
        'No' => 'non',
        'Yes' => 'oui',
      },
    },
   'SRFocalLength' => 'Focale de réduction de bougé',
   'SRHalfPressTime' => 'Temps entre mesure et déclenchement',
   'SRResult' => {
      Description => 'Stabilisation',
      PrintConv => {
        'Not stabilized' => 'non stabilisé',
      },
    },
   'SVGVersion' => 'Version SVG',
   'SampleFormat' => 'Format d\'échantillon',
   'SampleStructure' => {
      Description => 'Structure d\'échantillonnage',
      PrintConv => {
        'CompressionDependent' => 'Définie dans le processus de compression',
        'Orthogonal4-2-2Sampling' => 'Orthogonale, avec les fréquences d\'échantillonnage dans le rapport 4:2:2:(4)',
        'OrthogonalConstangSampling' => 'Orthogonale, avec les mêmes fréquences d\'échantillonnage relatives sur chaque composante',
      },
    },
   'SamplesPerPixel' => 'Nombre de composantes',
   'ScanImageEnhancer' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ScanningDirection' => {
      Description => 'Direction de scannage',
      PrintConv => {
        'Bottom-Top, L-R' => 'de bas en haut, de gauche à droite',
        'Bottom-Top, R-L' => 'de bas en haut, de droite à gauche',
        'L-R, Bottom-Top' => 'de gauche à droite, de bas en haut',
        'L-R, Top-Bottom' => 'de gauche à droite, de haut en bas',
        'R-L, Bottom-Top' => 'de droite à gauche, de bas en haut',
        'R-L, Top-Bottom' => 'de droite à gauche, de haut en bas',
        'Top-Bottom, L-R' => 'de haut en bas, de gauche à droite',
        'Top-Bottom, R-L' => 'de haut en bas, de droite à gauche',
      },
    },
   'SceneCaptureType' => {
      Description => 'Type de capture de scène',
      PrintConv => {
        'Landscape' => 'paysage',
        'Night' => 'scène de nuit',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'SceneMode' => {
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Auto' => 'auto',
        'Candlelight' => 'bougie',
        'Landscape' => 'paysage',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Night Scene' => 'nocturne',
        'Normal' => 'normale',
        'Off' => 'hors service',
        'Portrait' => 'portrait',
        'Shutter Priority' => 'priorité vitesse',
        'Snow' => 'neige',
        'Spot' => 'spot',
        'Standard' => 'standard',
        'Sunset' => 'coucher de soleil',
        'Super Macro' => 'super Macro',
        'Text' => 'texte',
      },
    },
   'SceneModeUsed' => {
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Candlelight' => 'bougie',
        'Landscape' => 'paysage',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Portrait' => 'portrait',
        'Shutter Priority' => 'priorité vitesse',
        'Snow' => 'neige',
        'Sunset' => 'coucher de soleil',
        'Text' => 'texte',
      },
    },
   'SceneSelect' => {
      PrintConv => {
        'Night' => 'scène de nuit',
        'Off' => 'hors service',
      },
    },
   'SceneType' => {
      Description => 'Type de scène',
      PrintConv => {
        'Directly photographed' => 'image photographiée directement',
      },
    },
   'SecurityClassification' => {
      Description => 'Classement de sécurité',
      PrintConv => {
        'Confidential' => 'confidentiel',
        'Restricted' => 'restreint',
        'Secret' => 'secret',
        'Top Secret' => 'top secret',
        'Unclassified' => 'non classé',
      },
    },
   'SelfTimer' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'SelfTimerMode' => 'Mode auto-timer',
   'SensingMethod' => {
      Description => 'Méthode de capture',
      PrintConv => {
        'Color sequential area' => 'capteur couleur séquentiel',
        'Color sequential linear' => 'capteur couleur séquentiel linéaire',
        'Monochrome area' => 'Capteur monochrome',
        'Monochrome linear' => 'Capteur linéaire monochrome',
        'Not defined' => 'non définie',
        'One-chip color area' => 'capteur monochip couleur',
        'Three-chip color area' => 'capteur trois chips couleur',
        'Trilinear' => 'capteur trilinéaire',
        'Two-chip color area' => 'capteur deux chips couleur',
      },
    },
   'SensitivityAdjust' => 'Réglage de sensibilité',
   'SensitivitySteps' => {
      Description => 'Pas de sensibilité',
      PrintConv => {
        '1 EV Steps' => 'Pas de 1 IL',
        'As EV Steps' => 'Comme pas IL',
      },
    },
   'SequentialShot' => {
      PrintConv => {
        'None' => 'aucune',
        'Standard' => 'standard',
      },
    },
   'ServiceIdentifier' => 'Identificateur de service',
   'SetButtonCrossKeysFunc' => {
      PrintConv => {
        'Normal' => 'normale',
      },
    },
   'ShadingCompensation' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ShadingCompensation2' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ShadowScale' => 'Echelle d\'ombre',
   'ShakeReduction' => {
      Description => 'Réduction du bougé (réglage)',
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Sharpness' => {
      Description => 'Accentuation',
      PrintConv => {
        'Hard' => 'dure',
        'Normal' => 'normale',
        'Soft' => 'douce',
        'n/a' => 'non établie',
      },
    },
   'SharpnessFrequency' => {
      PrintConv => {
        'Low' => 'doux',
        'Standard' => 'standard',
        'n/a' => 'non établie',
      },
    },
   'ShootingInfoDisplay' => {
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'ShootingMode' => {
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Candlelight' => 'bougie',
        'Macro' => 'macro',
        'Manual' => 'manuelle',
        'Normal' => 'normale',
        'Portrait' => 'portrait',
        'Shutter Priority' => 'priorité vitesse',
        'Snow' => 'neige',
        'Spot' => 'spot',
        'Sunset' => 'coucher de soleil',
      },
    },
   'ShortDocumentID' => 'ID court de document',
   'ShutterCount' => 'Comptage des déclenchements',
   'ShutterMode' => {
      PrintConv => {
        'Aperture Priority' => 'priorité ouverture',
        'Auto' => 'auto',
      },
    },
   'ShutterReleaseButtonAE-L' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ShutterSpeed' => 'Temps de pose',
   'ShutterSpeedValue' => 'Vitesse d\'obturation',
   'SimilarityIndex' => 'Indice de similarité',
   'SlaveFlashMeteringSegments' => 'Segments de mesure flash esclave',
   'SlowShutter' => {
      PrintConv => {
        'Night Scene' => 'nocturne',
        'None' => 'aucune',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'SlowSync' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Software' => 'Logiciel',
   'SpatialFrequencyResponse' => 'Réponse spatiale en fréquence',
   'SpecialEffectsOpticalFilter' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'SpectralSensitivity' => 'Sensibilité spectrale',
   'SpotMeteringMode' => {
      PrintConv => {
        'Center' => 'centre',
      },
    },
   'StreamType' => {
      PrintConv => {
        'Text' => 'texte',
      },
    },
   'StripByteCounts' => 'Octets par bande compressée',
   'StripOffsets' => 'Emplacement des données image',
   'Sub-location' => 'Lieu',
   'SubSecCreateDate' => 'Date de la création des données numériques',
   'SubSecDateTimeOriginal' => 'Date de la création des données originales',
   'SubSecModifyDate' => 'Date de modification de fichier',
   'SubSecTime' => 'Fractions de seconde de DateTime',
   'SubSecTimeDigitized' => 'Fractions de seconde de DateTimeDigitized',
   'SubSecTimeOriginal' => 'Fractions de seconde de DateTimeOriginal',
   'SubTileBlockSize' => 'Taille de bloc de sous-tuile',
   'SubfileType' => 'Type du nouveau sous-fichier',
   'SubimageColor' => {
      PrintConv => {
        'Monochrome' => 'monochrome',
        'RGB' => 'RVB',
      },
    },
   'SubjectDistance' => 'Distance du sujet',
   'SubjectDistanceRange' => {
      Description => 'Intervalle de distance du sujet',
      PrintConv => {
        'Close' => 'vue rapprochée',
        'Distant' => 'vue distante',
        'Macro' => 'macro',
        'Unknown' => 'inconnu',
      },
    },
   'SubjectLocation' => 'Zone du sujet',
   'SubjectProgram' => {
      PrintConv => {
        'None' => 'aucune',
        'Portrait' => 'portrait',
        'Sunset' => 'coucher de soleil',
        'Text' => 'texte',
      },
    },
   'SubjectReference' => 'Code de sujet',
   'Subsystem' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'SuperMacro' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'SuperimposedDisplay' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'SupplementalCategories' => 'Catégorie d\'appoint',
   'SupplementalType' => {
      Description => 'Type de supplément',
      PrintConv => {
        'Main Image' => 'Non établi',
        'Rasterized Caption' => 'Titre rastérisé',
        'Reduced Resolution Image' => 'Image de résolution réduite',
      },
    },
   'SvISOSetting' => 'Réglage ISO Sv',
   'T4Options' => 'bits de remplissage ajoutés',
   'T6Options' => 'Options T6',
   'TTL_DA_ADown' => 'Segment de mesure flash esclave 6',
   'TTL_DA_AUp' => 'Segment de mesure flash esclave 5',
   'TTL_DA_BDown' => 'Segment de mesure flash esclave 8',
   'TTL_DA_BUp' => 'Segment de mesure flash esclave 7',
   'TargetPrinter' => 'Imprimantte cible',
   'Technology' => {
      Description => 'Technologie',
      PrintConv => {
        'Active Matrix Display' => 'Afficheur à matrice active',
        'Cathode Ray Tube Display' => 'Afficheur à tube cathodique',
        'Digital Camera' => 'Appareil photo numérique',
        'Dye Sublimation Printer' => 'Imprimante à sublimation thermique',
        'Electrophotographic Printer' => 'Imprimante électrophotographique',
        'Electrostatic Printer' => 'Imprimante électrostatique',
        'Film Scanner' => 'Scanner de film',
        'Flexography' => 'Flexographie',
        'Ink Jet Printer' => 'Imprimante à jet d\'encre',
        'Offset Lithography' => 'Lithographie offset',
        'Passive Matrix Display' => 'Afficheur à matrice passive',
        'Photo CD' => 'CD photo',
        'Photo Image Setter' => 'Cadre photo',
        'Photographic Paper Printer' => 'Imprimante à papier photo',
        'Projection Television' => 'Téléviseur à projection',
        'Reflective Scanner' => 'Scanner à réflexion',
        'Silkscreen' => 'Ecran de soie',
        'Thermal Wax Printer' => 'Imprimante thermique à cire',
        'Video Camera' => 'Caméra vidéo',
        'Video Monitor' => 'Moniteur vidéo',
      },
    },
   'Teleconverter' => {
      PrintConv => {
        'None' => 'aucune',
      },
    },
   'Text' => 'Texte',
   'TextStamp' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Thresholding' => 'Seuil',
   'ThumbnailImage' => 'Vignette',
   'TileByteCounts' => 'Nombre d\'octets d\'élément',
   'TileDepth' => 'Profondeur d\'élément',
   'TileLength' => 'Longueur d\'élément',
   'TileOffsets' => 'Décalages d\'élément',
   'TileWidth' => 'Largeur d\'élément',
   'Time' => 'Heure',
   'TimeCreated' => 'Heure de création',
   'TimeScaleParamsQuality' => {
      PrintConv => {
        'Low' => 'doux',
      },
    },
   'TimeSent' => 'Heure d\'envoi',
   'TimeZoneOffset' => 'Offset de zone de date',
   'Title' => 'Titre',
   'ToneCurve' => {
      Description => 'Courbe de ton',
      PrintConv => {
        'Manual' => 'manuelle',
        'Standard' => 'standard',
      },
    },
   'ToneCurves' => 'Courbes de ton',
   'ToningEffect' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'None' => 'aucune',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
        'n/a' => 'non établie',
      },
    },
   'ToningEffectMonochrome' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'None' => 'aucune',
      },
    },
   'TransferFunction' => 'Fonction de transfert',
   'TransferRange' => 'Intervalle de transfert',
   'Transformation' => {
      PrintConv => {
        'Horizontal (normal)' => '0° (haut/gauche)',
        'Mirror horizontal' => '0° (haut/droit)',
        'Mirror horizontal and rotate 270 CW' => '90° sens horaire (gauche/haut)',
        'Mirror horizontal and rotate 90 CW' => '90° sens antihoraire (droit/bas)',
        'Mirror vertical' => '180° (bas/gauche)',
        'Rotate 180' => '180° (bas/droit)',
        'Rotate 270 CW' => '90° sens horaire (gauche/bas)',
        'Rotate 90 CW' => '90° sens antihoraire (droit/haut)',
      },
    },
   'TransparencyIndicator' => 'Indicateur de transparence',
   'TrapIndicator' => 'Indicateur de piège',
   'Trapped' => {
      PrintConv => {
        'Unknown' => 'inconnu',
      },
    },
   'TvExposureTimeSetting' => 'Réglage de temps de pose Tv',
   'UniqueCameraModel' => 'Nom unique de modèle d\'appareil',
   'UniqueDocumentID' => 'ID unique de document',
   'Unsharp1Color' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'RGB' => 'RVB',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'Unsharp2Color' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'RGB' => 'RVB',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'Unsharp3Color' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'RGB' => 'RVB',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'Unsharp4Color' => {
      PrintConv => {
        'Blue' => 'bleu',
        'Green' => 'vert',
        'RGB' => 'RVB',
        'Red' => 'rouge',
        'Yellow' => 'jaune',
      },
    },
   'UnsharpMask' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'Urgency' => {
      Description => 'Urgence',
      PrintConv => {
        '0 (reserved)' => '0 (réservé pour utilisation future)',
        '1 (most urgent)' => '1 (très urgent)',
        '5 (normal urgency)' => '5 (normalement urgent)',
        '8 (least urgent)' => '8 (moins urgent)',
        '9 (user-defined priority)' => '9 (réservé pour utilisation future)',
      },
    },
   'UserComment' => 'Commentaire utilisateur',
   'UserDef1PictureStyle' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'UserDef2PictureStyle' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'UserDef3PictureStyle' => {
      PrintConv => {
        'Landscape' => 'paysage',
        'Monochrome' => 'monochrome',
        'Portrait' => 'portrait',
        'Standard' => 'standard',
      },
    },
   'VRDVersion' => 'Version VRD',
   'VR_0x66' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'VibrationReduction' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
        'n/a' => 'non établie',
      },
    },
   'VideoCardGamma' => 'Gamma de la carte vidéo',
   'ViewfinderWarning' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'ViewingCondDesc' => 'Description des conditions de visionnage',
   'ViewingCondIlluminant' => 'Illuminant des conditions de visionnage',
   'ViewingCondIlluminantType' => 'Type d\'illuminant des conditions de visionnage',
   'ViewingCondSurround' => 'Environnement des conditions de visionnage',
   'VignetteControl' => {
      PrintConv => {
        'Normal' => 'normale',
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'VoiceMemo' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'WBAdjLighting' => {
      PrintConv => {
        'Daylight' => 'lumière du jour',
        'Flash' => 'flash',
        'None' => 'aucune',
      },
    },
   'WBBracketMode' => {
      PrintConv => {
        'Off' => 'hors service',
      },
    },
   'WBMode' => {
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'WBShiftAB' => 'Décalage bal. blancs ambre-bleu',
   'WBShiftMG' => 'Décalage bal. blancs magenta-vert',
   'WB_GBRGLevels' => 'Niveaux BB GBRG',
   'WB_GRBGLevels' => 'Niveaux BB GRBG',
   'WB_GRGBLevels' => 'Niveaux BB GRGB',
   'WB_RBGGLevels' => 'Niveaux BB RBGG',
   'WB_RBLevels' => 'Niveaux BB RB',
   'WB_RBLevels3000K' => 'Niveaux BB RB 3000K',
   'WB_RBLevels3300K' => 'Niveaux BB RB 3300K',
   'WB_RBLevels3600K' => 'Niveaux BB RB 3600K',
   'WB_RBLevels3900K' => 'Niveaux BB RB 3800K',
   'WB_RBLevels4000K' => 'Niveaux BB RB 4000K',
   'WB_RBLevels4300K' => 'Niveaux BB RB 4300K',
   'WB_RBLevels4500K' => 'Niveaux BB RB 4500K',
   'WB_RBLevels4800K' => 'Niveaux BB RB 4800K',
   'WB_RBLevels5300K' => 'Niveaux BB RB 5300K',
   'WB_RBLevels6000K' => 'Niveaux BB RB 6000K',
   'WB_RBLevels6600K' => 'Niveaux BB RB 6600K',
   'WB_RBLevels7500K' => 'Niveaux BB RB 7500K',
   'WB_RBLevelsCloudy' => 'Niveaux BB RB nuageux',
   'WB_RBLevelsShade' => 'Niveaux BB RB ombre',
   'WB_RBLevelsTungsten' => 'Niveaux BB RB tungstène',
   'WB_RGBGLevels' => 'Niveaux BB RGBG',
   'WB_RGBLevels' => 'Niveaux BB RVB',
   'WB_RGBLevelsCloudy' => 'Niveaux BB RVB nuageux',
   'WB_RGBLevelsDaylight' => 'Niveaux BB RVB lumière jour',
   'WB_RGBLevelsFlash' => 'Niveaux BB RVB flash',
   'WB_RGBLevelsFluorescent' => 'Niveaux BB RVB fluorescent',
   'WB_RGBLevelsShade' => 'Niveaux BB RVB ombre',
   'WB_RGBLevelsTungsten' => 'Niveaux BB RVB tungstène',
   'WB_RGGBLevels' => 'Niveaux BB RGGB',
   'WB_RGGBLevelsCloudy' => 'Niveaux BB RVVB nuageux',
   'WB_RGGBLevelsDaylight' => 'Niveaux BB RVVB lumière jour',
   'WB_RGGBLevelsFlash' => 'Niveaux BB RVVB flash',
   'WB_RGGBLevelsFluorescent' => 'Niveaux BB RVVB fluorescent',
   'WB_RGGBLevelsFluorescentD' => 'Niveaux BB RVVB fluorescent',
   'WB_RGGBLevelsFluorescentN' => 'Niveaux BB RVVB fluo N',
   'WB_RGGBLevelsFluorescentW' => 'Niveaux BB RVVB fluo W',
   'WB_RGGBLevelsShade' => 'Niveaux BB RVVB ombre',
   'WB_RGGBLevelsTungsten' => 'Niveaux BB RVVB tungstène',
   'WCSProfiles' => 'Profil Windows Color System',
   'Warning' => 'Attention',
   'WhiteBalance' => {
      Description => 'Balance des blancs',
      PrintConv => {
        'Auto' => 'auto',
        'Cloudy' => 'temps nuageux',
        'Day White Fluorescent' => 'fluorescente type blanc',
        'Daylight' => 'lumière du jour',
        'Daylight Fluorescent' => 'fluorescente type jour',
        'DaylightFluorescent' => 'fluorescente type jour',
        'DaywhiteFluorescent' => 'fluorescent blanc jour',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'Manual' => 'manuelle',
        'Shade' => 'ombre',
        'Shadow' => 'ombre',
        'Tungsten' => 'tungstène (lumière incandescente)',
        'Unknown' => 'inconnu',
        'User-Selected' => 'sélectionnée par l\'utilisateur',
        'White Fluorescent' => 'fluorescent blanc',
        'WhiteFluorescent' => 'fluorescent blanc',
      },
    },
   'WhiteBalance2' => {
      PrintConv => {
        'Auto' => 'auto',
      },
    },
   'WhiteBalanceAdj' => {
      PrintConv => {
        'Auto' => 'auto',
        'Cloudy' => 'temps nuageux',
        'Daylight' => 'lumière du jour',
        'Flash' => 'flash',
        'Fluorescent' => 'fluorescente',
        'Off' => 'hors service',
        'On' => 'en service',
        'Shade' => 'ombre',
        'Tungsten' => 'tungstène (lumière incandescente)',
      },
    },
   'WhiteBalanceMode' => {
      Description => 'Mode de balance des blancs',
      PrintConv => {
        'Auto (Cloudy)' => 'auto (nuageux)',
        'Auto (Daylight)' => 'auto (lumière du jour)',
        'Auto (DaylightFluorescent)' => 'auto (fluo lum. jour)',
        'Auto (DaywhiteFluorescent)' => 'auto (fluo jour)',
        'Auto (Flash)' => 'auto (flash)',
        'Auto (Shade)' => 'auto (ombre)',
        'Auto (Tungsten)' => 'auto (tungstène)',
        'Auto (WhiteFluorescent)' => 'auto (fluo blanc)',
        'Unknown' => 'inconnu',
        'User-Selected' => 'sélectionnée par l\'utilisateur',
      },
    },
   'WhiteBalanceSet' => {
      Description => 'Réglage de balance des blancs',
      PrintConv => {
        'Auto' => 'auto',
        'Cloudy' => 'temps nuageux',
        'Daylight' => 'lumière du jour',
        'DaylightFluorescent' => 'fluorescente type jour',
        'DaywhiteFluorescent' => 'fluorescent blanc jour',
        'Flash' => 'flash',
        'Manual' => 'manuelle',
        'Set Color Temperature 1' => 'Température de couleur définie 1',
        'Set Color Temperature 2' => 'Température de couleur définie 2',
        'Set Color Temperature 3' => 'Température de couleur définie 3',
        'Shade' => 'ombre',
        'Tungsten' => 'tungstène (lumière incandescente)',
        'WhiteFluorescent' => 'fluorescent blanc',
      },
    },
   'WhiteLevel' => 'Niveau blanc',
   'WhitePoint' => 'Chromaticité du point blanc',
   'WideRange' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
   'WorldTimeLocation' => {
      Description => 'Position en temps mondial',
      PrintConv => {
        'Destination' => 'destination',
        'Hometown' => 'résidence',
      },
    },
   'Writer-Editor' => 'Auteur de la légende / description',
   'XClipPathUnits' => 'Unités de chemin de rognage en X',
   'XPAuthor' => 'Auteur',
   'XPComment' => 'Commentaire',
   'XPKeywords' => 'Mots clé',
   'XPSubject' => 'Sujet',
   'XPTitle' => 'Titre',
   'XPosition' => 'Position en X',
   'XResolution' => 'Résolution d\'image horizontale',
   'YCbCrCoefficients' => 'Coefficients de la matrice de transformation de l\'espace de couleurs',
   'YCbCrPositioning' => {
      Description => 'Positionnement Y et C',
      PrintConv => {
        'Centered' => 'centré',
        'Co-sited' => 'côte à côte',
      },
    },
   'YCbCrSubSampling' => 'Rapport de sous-échantillonnage Y à C',
   'YClipPathUnits' => 'Unités de chemin de rognage en Y',
   'YPosition' => 'Position en Y',
   'YResolution' => 'Résolution d\'image verticale',
   'ZoneMatchingOn' => {
      PrintConv => {
        'Off' => 'hors service',
        'On' => 'en service',
      },
    },
);

1;  # end


__END__

=head1 NAME

Image::ExifTool::Lang::fr.pm - ExifTool language-specific tag information

=head1 DESCRIPTION

This file is used by Image::ExifTool to generate localized tag descriptions
and values.

=head1 AUTHOR

Copyright 2003-2009, Phil Harvey (phil at owl.phy.queensu.ca)

This library is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 ACKNOWLEDGEMENTS

Thanks to Jens Duttke, Bernard Guillotin and Jean Piquemal for providing
this translation.

=head1 SEE ALSO

L<Image::ExifTool(3pm)|Image::ExifTool>,
L<Image::ExifTool::TagInfoXML(3pm)|Image::ExifTool::TagInfoXML>

=cut
