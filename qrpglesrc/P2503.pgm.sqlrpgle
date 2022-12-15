**free

ctl-opt dftactgrp(*no);

dcl-pi P2503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P1991.rpgleinc'
/copy 'qrpgleref/P2436.rpgleinc'

dcl-ds theTable extname('T385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T385 LIMIT 1;

theCharVar = 'Hello from P2503';
dsply theCharVar;
callp localProc();
P35();
P1991();
P2436();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2503 in the procedure';
end-proc;