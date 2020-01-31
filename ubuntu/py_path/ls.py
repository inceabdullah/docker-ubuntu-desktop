import os

def ls_dir(path):

    currentPath = os.path.abspath(os.getcwd())
    
    path = os.path.join(currentPath, path)
    #print(path)
    files = []
    # r=root, d=directories, f = files
    for r, d, f in os.walk(path):
        for file in f:
            files.append(os.path.join(r, file))

    return {
        "files":files,
        "files_number":len(files)
            }