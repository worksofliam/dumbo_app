**free

ctl-opt dftactgrp(*no);

dcl-pi P1106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P1106';
dsply theCharVar;
callp localProc();
P70();
P1041();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1106 in the procedure';
end-proc;