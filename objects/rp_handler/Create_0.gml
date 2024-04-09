/// @description Insert description here
// You can write your code in this editor

depth = -9999

chaka_list = ds_list_create()

current_chaka_bulge = 0;
random_dir = -1;

voice = snd_hearttalk

tunein = instance_create(x, y, rp_tunein);
camera = instance_create(x, y, obj_cameraman)
camera.yoffset = -200;
camera.xoffset = 100;

combo = 0;
combomax = 4;

state = 0;

matching = 0;

waitabeat = false;

combo_count = 0;
combo_bulge = 0;
combo_color = c_gray;
fever = false;

don_counter = 0;
don_cooldown = 400;
don_timer = 0;

rain = false;

raincloud = part_emitter_create(global.partsys)
raindrops = part_emitter_create(global.partsys)

rainsound = audio_play_sound(snd_rain, 0, 1, 0)

pata_timer = 31
pata_time = 30

input_timer = 0;
input_timer_max = 300