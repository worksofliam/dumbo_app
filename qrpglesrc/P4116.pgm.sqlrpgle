**free

ctl-opt dftactgrp(*no);

dcl-pi P4116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2130.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'
/copy 'qrpgleref/P1300.rpgleinc'

dcl-ds theTable extname('T874') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T874 LIMIT 1;

theCharVar = 'Hello from P4116';
dsply theCharVar;
callp localProc();
P2130();
P194();
P1300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4116 in the procedure';
end-proc;