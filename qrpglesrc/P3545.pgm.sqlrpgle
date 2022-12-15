**free

ctl-opt dftactgrp(*no);

dcl-pi P3545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P500.rpgleinc'
/copy 'qrpgleref/P1930.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P3545';
dsply theCharVar;
callp localProc();
P500();
P1930();
P1408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3545 in the procedure';
end-proc;