**free

ctl-opt dftactgrp(*no);

dcl-pi P2976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2713.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P1804.rpgleinc'

dcl-ds theTable extname('T1368') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1368 LIMIT 1;

theCharVar = 'Hello from P2976';
dsply theCharVar;
callp localProc();
P2713();
P1155();
P1804();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2976 in the procedure';
end-proc;