**free

ctl-opt dftactgrp(*no);

dcl-pi P4451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P1907.rpgleinc'
/copy 'qrpgleref/P2692.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P4451';
dsply theCharVar;
callp localProc();
P1108();
P1907();
P2692();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4451 in the procedure';
end-proc;