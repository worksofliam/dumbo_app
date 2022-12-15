**free

ctl-opt dftactgrp(*no);

dcl-pi P441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T254') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T254 LIMIT 1;

theCharVar = 'Hello from P441';
dsply theCharVar;
callp localProc();
P295();
P338();
P352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P441 in the procedure';
end-proc;