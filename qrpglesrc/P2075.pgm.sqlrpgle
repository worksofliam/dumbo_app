**free

ctl-opt dftactgrp(*no);

dcl-pi P2075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P1851.rpgleinc'

dcl-ds theTable extname('T543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T543 LIMIT 1;

theCharVar = 'Hello from P2075';
dsply theCharVar;
callp localProc();
P454();
P331();
P1851();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2075 in the procedure';
end-proc;