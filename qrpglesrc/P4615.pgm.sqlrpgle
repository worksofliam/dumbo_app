**free

ctl-opt dftactgrp(*no);

dcl-pi P4615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P2642.rpgleinc'
/copy 'qrpgleref/P2728.rpgleinc'

dcl-ds theTable extname('T1697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1697 LIMIT 1;

theCharVar = 'Hello from P4615';
dsply theCharVar;
callp localProc();
P459();
P2642();
P2728();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4615 in the procedure';
end-proc;