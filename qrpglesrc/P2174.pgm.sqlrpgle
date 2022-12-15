**free

ctl-opt dftactgrp(*no);

dcl-pi P2174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1217.rpgleinc'
/copy 'qrpgleref/P1912.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P2174';
dsply theCharVar;
callp localProc();
P1217();
P1912();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2174 in the procedure';
end-proc;