**free

ctl-opt dftactgrp(*no);

dcl-pi P2123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'
/copy 'qrpgleref/P435.rpgleinc'

dcl-ds theTable extname('T1535') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1535 LIMIT 1;

theCharVar = 'Hello from P2123';
dsply theCharVar;
callp localProc();
P528();
P1400();
P435();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2123 in the procedure';
end-proc;