using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace DuplexServer
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession)]
    public class CalculatorService : ICalculatorDuplex
    {
        double result = 0.0D;
        string equation;

        public CalculatorService()
        {
            equation = result.ToString();
        }

        public void Clear()
        {
            Callback.Equation($"{equation} = {result}");
            equation = result.ToString();
        }

        public void AddTo(double n)
        {
            result += n;
            equation += $" + {n}";
            Callback.Result(result);
        }

        public void SubtractFrom(double n)
        {
            result -= n;
            equation += $" - {n}";
            Callback.Result(result);
        }

        public void MultiplyBy(double n)
        {
            result *= n;
            equation = "(" + equation + ")";
            equation += $" x {n}";
            Callback.Result(result);
        }

        public void DivideBy(double n)
        {
            result /= n;
            equation = "(" + equation + ")";
            equation += $" : {n}";
            Callback.Result(result);
        }

        ICalculatorDuplexCallback Callback
        {
            get
            {
                return OperationContext.Current.GetCallbackChannel<ICalculatorDuplexCallback>();
            }
        }
    }
}
