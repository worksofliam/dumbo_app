**free

ctl-opt dftactgrp(*no);

dcl-pi P2279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P2252.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P2279';
dsply theCharVar;
callp localProc();
P249();
P595();
P2252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2279 in the procedure';
end-proc;