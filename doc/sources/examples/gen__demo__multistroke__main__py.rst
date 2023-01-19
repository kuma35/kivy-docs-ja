Multistroke Recognition Database Demonstration
==============================================

.. |pic22| image:: /images/examples/demo__multistroke__main__py.png
   :width: 50%
   :align: middle

|pic22|

This application records gestures and attempts to match them. You should see a
black drawing surface with some buttons across the bottom. As you make a
gesture on the drawing surface, the gesture will be added to the history and a
match will be attempted. If you go to the history tab, name the gesture, and
add it to the database, then similar gestures in the future will be recognized.
You can load and save databases of gestures in .kg files.

This demonstration code spans many files, with this being the primary file. The
information pop-up ('No match') comes from the file :ref:`helpers.py
<demo_multistroke_helpers.py>`. The history pane is managed in the file
:ref:`historymanager.py <demo_multistroke_historymanager.py>` and described in
the file :ref:`historymanager.kv <demo_multistroke_historymanager.kv>`. The
database pane and storage is managed in the file :ref:`gesturedatabase.py
<demo_multistroke_gesturedatabase.py>` and the described in the file
:ref:`gesturedatabase.kv <demo_multistroke_gesturedatabase.kv>`. The general
logic of the sliders and buttons are in the file settings.py and described in
settings.kv. but the actual settings pane is described in the file
:ref:`multistroke.kv <demo_multistroke_multistroke.kv>` and managed from this
file.



.. _`demo_multistroke_main.py`:

File **demo/multistroke/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/multistroke/main.py
    :code:

.. _`demo_multistroke_helpers.py`:

File **demo/multistroke/helpers.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/multistroke/helpers.py
    :code:

.. _`demo_multistroke_historymanager.py`:

File **demo/multistroke/historymanager.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/multistroke/historymanager.py
    :code:

.. _`demo_multistroke_historymanager.kv`:

File **demo/multistroke/historymanager.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/multistroke/historymanager.kv
    :code:

.. _`demo_multistroke_gesturedatabase.py`:

File **demo/multistroke/gesturedatabase.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: py
    :linenothreshold: 3

.. include:: ../../../examples/demo/multistroke/gesturedatabase.py
    :code:

.. _`demo_multistroke_gesturedatabase.kv`:

File **demo/multistroke/gesturedatabase.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/multistroke/gesturedatabase.kv
    :code:

.. _`demo_multistroke_multistroke.kv`:

File **demo/multistroke/multistroke.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/multistroke/multistroke.kv
    :code:
