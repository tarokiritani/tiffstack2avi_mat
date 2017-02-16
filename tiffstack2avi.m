function tiffstack2avi
    addpath([mfilename('fullpath'), '/dependencies/uipickfiles/']);
    folders = uipickfiles('Prompt','Select folders containing tiff sequence.');
    for f = folders
        dos(['ffmpeg -i ', f{1}, '\\frame%d.tif -vcodec ffv1 ', f{1}, '.avi']);
    end