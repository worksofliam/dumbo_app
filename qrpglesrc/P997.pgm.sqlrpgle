**free

ctl-opt dftactgrp(*no);

dcl-pi P997;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P997';
dsply theCharVar;
callp localProc();
P397();
P787();
P82();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P997 in the procedure';
end-proc;