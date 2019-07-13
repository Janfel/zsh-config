import os
import glob

DOIT_CONFIG = {"default_tasks": ["compile"], "verbosity": 2}

DIRS_TO_FILES = {"env": ".zshenv", "init": ".zshrc", "profile": ".zprofile"}



def gen_compile_task(in_dir, out_file):
    task = {
        "name": in_dir,
        "doc": f"compiles the contents of ./{in_dir} into {out_file}",
        "targets": [out_file],
    }
    if not (os.path.exists(in_dir) and os.path.isdir(in_dir) and os.listdir(in_dir)):
        task["actions"] = [["touch", out_file]]
        return task

    in_files = glob.glob(f"{in_dir}/*.zsh")
    in_files.extend(
        plug+".bundle" for plug in glob.iglob(f"{in_dir}/*.plug")
    )
    in_files.sort()

    task["actions"] = [f"cat  {' '.join(in_files)} | rg -v '^\\s*(#|$)' > {out_file}"]
    task["file_dep"] = in_files
    return task


def task_compile():
    yield {
        "name": None,
        "doc": "compiles the contents of a directory into a configuration file. subtasks: env, init, profile",
    }
    for idir, file in DIRS_TO_FILES.items():
        yield gen_compile_task(idir, file)


def task_bundle():
    yield {
        "name": None,
        "doc": "executes 'antigen bundle' for a set of plugins in a .plug file",
    }
    for bdir in DIRS_TO_FILES:
        for plug_file in glob.iglob(f"{bdir}/*.plug"):
            bundle_file = plug_file+".bundle"
            yield {
                "name": plug_file,
                "targets": [bundle_file],
                "file_dep": [plug_file],
                "actions": [f"antibody bundle < {plug_file} > {bundle_file}"],
            }


def task_update():
    return {
        "doc": "updates plugins using 'antibody update'",
        "actions": ["antibody update"],
    }
