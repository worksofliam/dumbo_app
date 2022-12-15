**free

ctl-opt dftactgrp(*no);

dcl-pi P239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds theTable extname('T457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T457 LIMIT 1;

theCharVar = 'Hello from P239';
dsply theCharVar;
callp localProc();
P228();
P172();
P133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P239 in the procedure';
end-proc;