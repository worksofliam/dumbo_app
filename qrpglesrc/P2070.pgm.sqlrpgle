**free

ctl-opt dftactgrp(*no);

dcl-pi P2070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P1977.rpgleinc'

dcl-ds theTable extname('T469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T469 LIMIT 1;

theCharVar = 'Hello from P2070';
dsply theCharVar;
callp localProc();
P103();
P1843();
P1977();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2070 in the procedure';
end-proc;