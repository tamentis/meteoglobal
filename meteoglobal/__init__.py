from pyramid.configuration import Configurator
from pyramid.settings import asbool

from meteoglobal.models import appmaker

def main(global_config, **settings):
    """ This function returns a WSGI application.
    """
    db_string = settings.get('db_string')
    if db_string is None:
        raise ValueError("No 'db_string' value in application configuration.")
    db_echo = settings.get('db_echo', 'false')
    get_root = appmaker(db_string, asbool(db_echo))
    config = Configurator(settings=settings, root_factory=get_root)
    config.add_static_view('static', 'meteoglobal:static')
    config.add_view('meteoglobal.views.view_root', 
                    context='meteoglobal.models.MyApp', 
                    renderer="templates/root.pt")
    config.add_view('meteoglobal.views.view_model',
                    context='meteoglobal.models.MyModel',
                    renderer="templates/model.pt")
    return config.make_wsgi_app()


