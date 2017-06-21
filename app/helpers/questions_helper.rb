module QuestionsHelper

	def form_title
		@question.new_record? ? "Crear Pregunta" : "Modificar Pregunta"
	end

end
