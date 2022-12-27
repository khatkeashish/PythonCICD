import pytest

from python_cicd.math import add


def test_add():
    a = 1
    b = 2
    assert add(1, 2) == 3
