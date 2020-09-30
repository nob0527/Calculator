from PySide2.QtCore import QObject, Signal, Property


class CalcEngine(QObject):
    changed = Signal()

    def __init__(self):
        super().__init__()

        self._result = " "

    def set_result(self, value):
        if value == "C":
            self._result = " "
            self.changed.emit()
            return

        if value == "=":
            self._result = str(eval(self._result))
            self.changed.emit()
            return

        self._result += value
        self.changed.emit()

    def get_result(self):
        return self._result

    result = Property(str, get_result, set_result, notify=changed)
