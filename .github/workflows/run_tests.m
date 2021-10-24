% Run all unit tests.

addpath(".")
objects = dir("tests");
for i = 1:numel(objects)
    if regexp(objects(i).name, ".*\.m")
        fprintf("Running %s\n", objects(i).name)
        run(fullfile(objects(i).folder, objects(i).name))
    end
end
