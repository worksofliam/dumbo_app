**free

ctl-opt dftactgrp(*no);

dcl-pi P2538;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2525.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P1234.rpgleinc'

dcl-ds theTable extname('T1690') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1690 LIMIT 1;

theCharVar = 'Hello from P2538';
dsply theCharVar;
callp localProc();
P2525();
P234();
P1234();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2538 in the procedure';
end-proc;