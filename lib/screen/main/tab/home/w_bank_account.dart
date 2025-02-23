import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:velocity_x/velocity_x.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(account.bank.logoImagePath, width: 40,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? "${account.bank.name}통장").text.white
                  .size(12).make(),
              ("${account.balance}원").text.white.bold.size(18).make(),
            ],
          ).pSymmetric(h: 20, v: 20),
        ),
        RoundedContainer(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            backgroundColor: context.appColors.buttonBackground,
            radius: 10,
            child: "송금".text.white.bold.make(),
        ),
      ],
    );
  }
}