**free

ctl-opt dftactgrp(*no);

dcl-pi P2555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'
/copy 'qrpgleref/P2407.rpgleinc'

dcl-ds theTable extname('T634') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T634 LIMIT 1;

theCharVar = 'Hello from P2555';
dsply theCharVar;
callp localProc();
P1414();
P892();
P2407();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2555 in the procedure';
end-proc;