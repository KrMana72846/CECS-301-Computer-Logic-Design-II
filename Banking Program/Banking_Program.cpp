//============================================================================
// Name        : CECS275_FinalProject.cpp
// Author      : Kenny Khut
// Version     : 1.0
// Copyright   : ID:015425850
// Description : Bank Program
//============================================================================

#include <iostream>
#include <iomanip>
using namespace std;

class bankAccount {
protected:
	float balance;
	float interestRate;
	int deposits;
	int withdrawals;

public:
	//Pre-constructor
	bankAccount()
	{
		balance = 0; interestRate = 0;
		deposits = 0; withdrawals = 0;
	}

	//	Constructor
	bankAccount(float bal, float rate)
	{
		balance = bal;
		interestRate = rate;
		deposits = 0;
		withdrawals = 0;
	}
	//	Makes and counts deposits
	void bankDeposit(float deposit)
	{
		balance = balance + deposit;
		cout << "Current balance: $" << balance << endl;
		if (deposit > 0)
			deposits++;
	}
	//	Makes and counts withdrawals
	int bankWithdrawal(float withdraw)
	{
		balance = balance - withdraw;
		cout << "Current balance: $" << balance << endl;
		if (withdraw > 0) {
			withdrawals++;
		}
		return balance;
	}
	//Calculates interest rate
	void calcInt()
	{
		balance = balance + balance * interestRate;
	}
};

class savingsAccount : public bankAccount
{
protected:
	int accountStatus;
	int serviceCharge;

public:

	//	Constructor
	savingsAccount(float bal, float rate) : bankAccount(bal, rate)
	{
		accountStatus = 0; serviceCharge = 0;
	}

	//	Checks Account Status
	void status(float bal)
	{
		if (bal >= 25)
			accountStatus = 1;
		else
			accountStatus = 0;
	}

	//	Checks Withdrawal Status
	void withdrawalStatus(float with)
	{
		monthlyProc();
		status(balance);
		if (accountStatus == 1) {
			bankWithdrawal(with);
		}
		else
			cout << "Account is inactive, cannot make withdraw." << endl;
	}

	//	Checks Deposit Status
	void depositStatus(float depo)
	{
		status(balance);
		if (accountStatus == 1) {
			bankDeposit(depo);
		}
		else if (balance + depo > 25) {
			bankDeposit(depo);
			status(balance);
			cout << "Account has been reactivated." << endl;
		}
		else
			cout << "Account is inactive, cannot make withdraw." << endl;
	}

	//	Makes monthly service charges
	void monthlyProc()
	{
		if (withdrawals > 4) {
			if ((balance - serviceCharge) < 25)
			{
				accountStatus = 0;
			}
			else
				serviceCharge = serviceCharge + 1;
		}
	}

	// Shows statistics
	void showBalance(float begin) {
		balance = balance - serviceCharge;
		if (balance > 0)
		{
			calcInt();
		}
		cout << fixed << setprecision(2);
		cout << "Beginning balance: $" << begin << endl;
		cout << "Number of deposits this month: " << deposits << endl;
		cout << "Number of withdrawals this month: " << withdrawals << endl;
		cout << "New balance: $" << balance << endl;
	}
};
class checkingClass : public savingsAccount
{
public:
	//	Constructor
	checkingClass(float bal, float rate) : savingsAccount(bal, rate)
	{
		balance = bal; interestRate = rate;
	}

	void checkWithdraw(float withdrawal)
	{
		if ((balance - withdrawal) < 0)
		{
			cout << "This withdrawal will cause balance to drop below zero, you will be charged a service charge of $15. (Withdrawal will also canceled)" << endl;
			balance = balance - 15;
		}
		else
			withdrawalStatus(withdrawal);
	}
};

int main() {
	int operation = 0;
	float rate, balance, deposit, withdraw;

	//Accepts balance and interest rate
	cout << "Enter balance:" << endl;
	cin >> balance;
	cout << "Enter interest rate in decimal form (ex. use 0.1 for 10%):" << endl;
	cin >> rate;
	checkingClass bankaccount(balance, rate);

	while (operation != 3) {
		cout << "Enter the number for the desired operation" << endl;
		cout << " 1. Make a deposit" << endl;
		cout << " 2. Make a withdrawal" << endl;
		cout << " 3. End program" << endl;
		cin >> operation;

		//	Makes deposit
		if (operation == 1)
		{
			cout << "Enter the amount you like to deposit:" << endl;
			cin >> deposit;
			bankaccount.depositStatus(deposit);
		}
		// Makes withdrawal
		else if (operation == 2)
		{
			cout << "Enter the amount you like to withdraw:" << endl;
			cin >> withdraw;
			bankaccount.checkWithdraw(withdraw);
		}
		//	Ends program and show statistics
		else if (operation == 3)
		{
			bankaccount.showBalance(balance);
		}
		// Operation is not found or error
		else
			cout << "Operation cannot be found, please try again." << endl;
	}

	return 0;
}
