#!/usr/bin/env python3
"""Compile every repository Lean theorem source in dependency order on GCP."""
import pathlib
import re
import subprocess
import sys

root = pathlib.Path.cwd()
sources = {p.stem: p for p in root.glob('*.lean') if p.name != 'AuditHash.lean'}
deps = {}
for name, path in sources.items():
    imports = re.findall(r'^import\s+([A-Za-z0-9_.]+)', path.read_text(encoding='utf-8'), re.M)
    deps[name] = [module for module in imports if module in sources]
order, visiting, done = [], set(), set()
def visit(name):
    if name in done:
        return
    if name in visiting:
        raise RuntimeError(f'cyclic local imports at {name}')
    visiting.add(name)
    for dep in deps[name]:
        visit(dep)
    visiting.remove(name)
    done.add(name)
    order.append(name)
for name in sorted(sources):
    visit(name)
print('Local source order:', ' '.join(order), flush=True)
for name in order:
    print(f'Checking {name}', flush=True)
    result = subprocess.run(['lean', '-o', f'{name}.olean', str(sources[name])],
                            stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
    print(result.stdout, end='', flush=True)
    if result.returncode or 'sorryAx' in result.stdout:
        print(f'FAILED {name}: exit={result.returncode}, sorryAx={"sorryAx" in result.stdout}', flush=True)
        sys.exit(1)
print(f'Checked {len(order)} repository sources without reported sorryAx.', flush=True)