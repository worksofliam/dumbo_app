**free

ctl-opt dftactgrp(*no);

dcl-pi P602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P301.rpgleinc'

dcl-ds T743 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T743 FROM T743 LIMIT 1;

theCharVar = 'Hello from P602';
dsply theCharVar;
callp localProc();
P314();
P5();
P301();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P602 in the procedure';
end-proc;