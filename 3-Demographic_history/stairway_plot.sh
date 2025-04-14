#create a batch file
stairway_plot_es="/public/home/tools/stairway_plot/stairway_plot_es"
Taiwan.blueprint="/public/home/tools/stairway_plot/Taiwan.blueprint"
java -cp stairway_plot_es Stairbuilder Taiwan.blueprint

#run the batch file
sh blueprint_file.sh