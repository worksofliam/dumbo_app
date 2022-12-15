**free

ctl-opt dftactgrp(*no);

dcl-pi P2422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1759.rpgleinc'
/copy 'qrpgleref/P2191.rpgleinc'
/copy 'qrpgleref/P2228.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P2422';
dsply theCharVar;
callp localProc();
P1759();
P2191();
P2228();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2422 in the procedure';
end-proc;