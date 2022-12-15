**free

ctl-opt dftactgrp(*no);

dcl-pi P2639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P2007.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'

dcl-ds theTable extname('T412') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T412 LIMIT 1;

theCharVar = 'Hello from P2639';
dsply theCharVar;
callp localProc();
P1553();
P2007();
P337();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2639 in the procedure';
end-proc;