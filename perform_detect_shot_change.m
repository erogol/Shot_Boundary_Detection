function [] = perform_detect_shot_change()
PATH = 'avi_videos';
SAVE_PATH = 'SAVE_SHOTS';

ROOT_DIR = read_dir(PATH);
num_classes = length(ROOT_DIR);

for i = 1:num_classes
    CLASS_NAME = ROOT_DIR(i,1).name;
    CLASS_PATH = fullfile(PATH,CLASS_NAME);
    CLASS_DIR = read_dir(CLASS_PATH);
    num_videos = numel(CLASS_DIR);
    
    for j = 1:num_videos
        VIDEO_NAME = CLASS_DIR(j,1).name;
        VIDEO_PATH = fullfile(CLASS_PATH,VIDEO_NAME);
        SHOTS = detect_shot_change(VIDEO_PATH);
        SAVE_FULL_PATH = fullfile(SAVE_PATH,CLASS_NAME);
        mkdir(SAVE_FULL_PATH);
        VIDEO_NAME = strrep(VIDEO_NAME,'avi','mat');
        save(fullfile(SAVE_FULL_PATH,VIDEO_NAME),'SHOTS');
        
        
    end
end