try:
    # There seems to be some bug that if VTK isn't imported before the
    # rasterizer then we are unable to create an opengl context. So we just
    # import it here if we can, in order to mitigate this
    import vtk
except ImportError:
    pass

from cyrasterize.base import CyRasterizer
from .shader import FragmentShader, VertexShader

from ._version import get_versions
__version__ = get_versions()['version']
del get_versions
