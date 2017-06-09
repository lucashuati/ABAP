* QUESTAO 37 - Declare all types and constants from type-pools ABAP and ICON.

REPORT zabap101_037 .

TYPE-POOLS: icon, abap .

CONSTANTS c_favorite_icons LIKE icon_information VALUE '@OS@' .

DATA is_true TYPE abap_bool.