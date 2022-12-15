**free

ctl-opt dftactgrp(*no);

dcl-pi P1424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P900.rpgleinc'

dcl-ds theTable extname('T773') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T773 LIMIT 1;

theCharVar = 'Hello from P1424';
dsply theCharVar;
callp localProc();
P1256();
P1396();
P900();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1424 in the procedure';
end-proc;