**free

ctl-opt dftactgrp(*no);

dcl-pi P1424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P951.rpgleinc'
/copy 'qrpgleref/P1386.rpgleinc'
/copy 'qrpgleref/P1008.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P1424';
dsply theCharVar;
callp localProc();
P951();
P1386();
P1008();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1424 in the procedure';
end-proc;