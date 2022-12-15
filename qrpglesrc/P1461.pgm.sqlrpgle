**free

ctl-opt dftactgrp(*no);

dcl-pi P1461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P268.rpgleinc'
/copy 'qrpgleref/P1397.rpgleinc'
/copy 'qrpgleref/P1346.rpgleinc'

dcl-ds T1559 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1559 FROM T1559 LIMIT 1;

theCharVar = 'Hello from P1461';
dsply theCharVar;
callp localProc();
P268();
P1397();
P1346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1461 in the procedure';
end-proc;