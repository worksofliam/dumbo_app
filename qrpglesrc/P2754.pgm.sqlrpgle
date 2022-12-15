**free

ctl-opt dftactgrp(*no);

dcl-pi P2754;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P1619.rpgleinc'

dcl-ds T1138 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1138 FROM T1138 LIMIT 1;

theCharVar = 'Hello from P2754';
dsply theCharVar;
callp localProc();
P1190();
P521();
P1619();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2754 in the procedure';
end-proc;