//stores all the Questions and options with first option as correct option
// QuizQuestion is class which accecpts and Qn and options 

import 'package:quizapp/models/quiz_question.dart';

const questions = [
  QuizQuestion("What is price action in trading, and why is it important?", [
    "It involves analyzing price movements without indicators.",
    "It uses indicators to predict market movements.",
    "It focuses on fundamental analysis.",
    "It relies on market news only."
  ]),
  QuizQuestion("How does price action differ from technical indicators?", [
    "Price action relies on price movements, while indicators use formulas.",
    "They both use the same analysis techniques.",
    "Price action uses moving averages.",
    "Indicators do not use historical data."
  ]),
  QuizQuestion("What are the key components of a candlestick chart?", [
    "Open, high, low, and close prices.",
    "Volume and market cap.",
    "Support and resistance levels.",
    "Trend lines and moving averages."
  ]),
  QuizQuestion(
      "How do traders use support and resistance levels in price action trading?",
      [
        "To identify potential reversal points.",
        "To determine trade volumes.",
        "To set news alerts.",
        "To track market sentiment."
      ]),
  QuizQuestion(
      "What is the significance of trend lines in price action analysis?", [
    "They help identify the direction of the market.",
    "They show the volume of trades.",
    "They indicate market sentiment.",
    "They measure market volatility."
  ]),
  QuizQuestion("How can you identify a trend reversal using price action?", [
    "By spotting specific candlestick patterns.",
    "By analyzing moving averages.",
    "By calculating the RSI.",
    "By checking the MACD crossover."
  ]),
  QuizQuestion("What is a price action trading strategy?", [
    "A method based on historical price movements.",
    "A strategy relying on news events.",
    "A technique using technical indicators.",
    "A system based on fundamental data."
  ]),
  QuizQuestion(
      "How do you interpret different candlestick patterns in price action trading?",
      [
        "By recognizing patterns like doji and engulfing.",
        "By analyzing trend lines.",
        "By calculating Fibonacci retracements.",
        "By using Bollinger Bands."
      ]),
  QuizQuestion("What role does volume play in price action analysis?", [
    "It confirms the strength of price movements.",
    "It shows the number of traders.",
    "It predicts future price changes.",
    "It measures market sentiment."
  ]),
  QuizQuestion(
      "How can price action be used to determine entry and exit points in a trade?",
      [
        "By analyzing support and resistance levels.",
        "By following news events.",
        "By checking moving average crossovers.",
        "By calculating the MACD."
      ]),
  QuizQuestion(
      "What are some common mistakes traders make when analyzing price action?",
      [
        "Ignoring the overall market context.",
        "Using too many indicators.",
        "Relying solely on news events.",
        "Overtrading without a plan."
      ]),
  QuizQuestion(
      "How does price action trading differ between different markets (e.g., forex, stocks, commodities)?",
      [
        "The principles are the same but applied differently.",
        "It does not differ at all.",
        "Each market uses unique indicators.",
        "Price action is only for forex."
      ]),
  QuizQuestion(
      "What is the significance of the pin bar pattern in price action trading?",
      [
        "It indicates a potential reversal.",
        "It confirms a strong trend.",
        "It measures market volatility.",
        "It shows trade volume."
      ]),
  QuizQuestion(
      "How can traders use the inside bar pattern in their trading strategies?",
      [
        "To identify consolidation and breakout points.",
        "To determine market sentiment.",
        "To measure trade volume.",
        "To set stop-loss levels."
      ]),
  QuizQuestion(
      "What is the role of the engulfing pattern in identifying potential market reversals?",
      [
        "It signals a strong reversal when it engulfs the previous candle.",
        "It indicates a continuation of the trend.",
        "It measures market volume.",
        "It shows market sentiment."
      ]),
  QuizQuestion(
      "How do traders use the concept of market structure in price action analysis?",
      [
        "To understand trends and reversals.",
        "To calculate moving averages.",
        "To analyze market volume.",
        "To track news events."
      ]),
  QuizQuestion(
      "What are the differences between bullish and bearish price action signals?",
      [
        "Bullish signals indicate rising prices, bearish signals indicate falling prices.",
        "They both indicate market volume.",
        "They are determined by moving averages.",
        "They show market sentiment."
      ]),
  QuizQuestion("How can price action be used to identify false breakouts?", [
    "By analyzing price movements after the breakout.",
    "By calculating RSI levels.",
    "By checking news events.",
    "By using Bollinger Bands."
  ]),
  QuizQuestion(
      "What is the importance of timeframes in price action trading?", [
    "Different timeframes provide different perspectives.",
    "Only short timeframes are useful.",
    "Timeframes do not matter.",
    "Long timeframes are always better."
  ]),
  QuizQuestion(
      "How do you combine price action with other forms of analysis (e.g., fundamental analysis)?",
      [
        "By using price action to time entries based on fundamental insights.",
        "By ignoring price action and focusing on fundamentals.",
        "By only using technical indicators.",
        "By relying on news events alone."
      ]),
];
