"""Approved shared Button roles, from actual source paint values."""
import json
from pathlib import Path

_DATA = json.loads(Path(__file__).with_suffix('.json').read_text())


def button_colors(column, current):
    result = {}
    for name, value in _DATA['roles'][column].items():
        # Role aliases are flattened; private palette references stay symbolic.
        result[name] = (value if value.startswith('{palette.')
                        else current[value[1:-1]])
    return result


def button_palette(column):
    return _DATA['palette'][column]
