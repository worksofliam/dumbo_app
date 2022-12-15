**free

ctl-opt dftactgrp(*no);

dcl-pi P3491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2952.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P3491';
dsply theCharVar;
callp localProc();
P2952();
P162();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3491 in the procedure';
end-proc;