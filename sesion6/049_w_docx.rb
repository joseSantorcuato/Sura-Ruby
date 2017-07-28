require 'docx'

doc = Docx::Document.open('test.docx')

doc.bookmarks['test1'].insert_text_after(", ha salido todo bien")
#Hay que tener los marcadores funcionando tengo dos: test y prueba_dos

doc.bookmarks['test2'].insert_multiple_lines(['Acá agregaré', 'más ', 'palabras'])
#El ejemplo de la gema esta malo, fijate que para varias lineas no lleva el after



doc.save('prueba_editada.docx')
