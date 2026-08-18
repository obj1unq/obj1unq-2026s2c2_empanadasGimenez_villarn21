//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var deuda = 0
    var dinero = 0
    method sueldo(){
        return sueldo
    }
    method sueldoNuevo(sueldoNuevo){
        sueldo = sueldoNuevo
    }
    method cobrarSueldo(monto){
        if (monto >= deuda){
            dinero = dinero + (monto - deuda)
            deuda = 0
        }else{
            deuda = deuda - monto
        }
    }
    method deuda(){
        return deuda
    }
    method dinero(){
        return dinero
    }
    method gastar(cuanto){
         if (dinero >= cuanto) {
            dinero = dinero - cuanto
        }else{
            deuda = deuda + (cuanto - dinero)
            dinero = 0
        }
    }
}
object baigorria{
    var comisionEmpanada = 15
    var empanadasVendidas = 0
    var totalCobrado = 0
    method venderEmpanadas(cantidad){
        empanadasVendidas = empanadasVendidas + cantidad
    }
    method sueldo(){
        return comisionEmpanada * empanadasVendidas
    }
    method cobrarSueldo(monto){
        totalCobrado = totalCobrado + monto 
        empanadasVendidas = 0
    }
    method totalCobrado(){
        return totalCobrado
    }
}
object gimenez{
    var fondoSueldos = 300000
    method fondo(){
        return fondoSueldos
    }
    method pagarSueldo(baigorria){
        fondoSueldos = fondoSueldos - baigorria.sueldo()
        const monto = baigorria.sueldo()
        baigorria.cobrarSueldo(monto)
    }
}