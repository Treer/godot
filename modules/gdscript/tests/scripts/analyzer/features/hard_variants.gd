func variant() -> Variant: return null

var member_weak = variant()
var member_typed: Variant = variant()
var member_inferred := variant()

func param_weak(param = variant()) -> void: print(param)
func param_typed(param: Variant = variant()) -> void: print(param)
func param_inferred(param := variant()) -> void: print(param)

func return_untyped(): return variant()
func return_typed() -> Variant: return variant()

@warning_ignore("unused_variable")
func test() -> void:
	var weak = variant()
	var typed: Variant = variant()
	var inferred := variant()

	weak = variant()
	typed = variant()
	inferred = variant()

	param_weak(typed)
	param_typed(typed)
	param_inferred(typed)

	if typed == null: pass
	if typed != null: pass
	if typed is Node: pass

	print('ok')
