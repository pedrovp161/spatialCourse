from spatools.tools.tl import SelectionTool

tool: SelectionTool = SelectionTool("/mnt/SATA/spatialCourse/data")
adata = tool.run()

if "selected_area" in adata.obs.columns:
    print(adata.obs["selected_area"].value_counts())