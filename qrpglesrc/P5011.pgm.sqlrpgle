**free

ctl-opt dftactgrp(*no);

dcl-pi P5011;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'

dcl-ds T1474 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1474 FROM T1474 LIMIT 1;

theCharVar = 'Hello from P5011';
dsply theCharVar;
callp localProc();
P56();
P1020();
P875();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5011 in the procedure';
end-proc;