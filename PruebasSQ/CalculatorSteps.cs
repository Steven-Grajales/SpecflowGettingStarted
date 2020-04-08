using System;
using Example;
using TechTalk.SpecFlow;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace PruebasSQ
{
    [Binding]
    public class CalculatorSteps
    {
        //context injection
        private readonly Calculator calculator;

        public CalculatorSteps(Calculator calculator)
        {
            this.calculator = calculator;
        }

        [Given(@"I have entered (.*) into the calculator")]
        public void GivenIHaveEnteredIntoTheCalculator(int number)
        {
            calculator.FirstNumber = number;
        }

        [Given(@"I have also entered (.*) into the calculator")]
        public void GivenIHaveAlsoEnteredIntoTheCalculator(int number)
        {
            calculator.SecondNumber = number;
        }

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            calculator.result = calculator.Add();
            
        }

        [When(@"I press subtract")]
        public void WhenIPressSub()
        {
            calculator.result = calculator.Subtract();
            
        }

        [When(@"I press multiply")]
        public void WhenIPressMultiply()
        {
            calculator.result = calculator.Multiply();

        }

        [When(@"I press divide")]
        public void WhenIPressDivide()
        {
            calculator.result = calculator.Divide();

        }

        [Then(@"the result should be (.*) on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(int expectedResult)
        {
            Assert.AreEqual(expectedResult, calculator.result);
        }
    }
}

