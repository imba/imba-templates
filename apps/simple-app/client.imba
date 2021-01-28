global css body
	p:10

tag App
	prop todos = []
	prop newTitle = ""

	def addTodo
		todos.push {title: newTitle}
		newTitle = ""
		
	def toggleTodo todo
		todo.done = !todo.done

	def render
		<self[display:block]>
			<header[display:hflex]>
			<main[bd:1px solid blue rd:6px p:10px]>
				<form.header @submit.prevent=addTodo>
					<input bind=newTitle placeholder="Add!!...">
					<button type='submit'> 'Add item'
				<div> for todo in todos
					<div.item .done=(todo.done) @click=toggleTodo(todo)> todo.title

imba.mount <App>