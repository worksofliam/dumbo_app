**free

ctl-opt dftactgrp(*no);

dcl-pi P369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P369';
dsply theCharVar;
callp localProc();
P131();
P214();
P33();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P369 in the procedure';
end-proc;