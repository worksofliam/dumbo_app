**free

ctl-opt dftactgrp(*no);

dcl-pi P5269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2099.rpgleinc'
/copy 'qrpgleref/P2483.rpgleinc'
/copy 'qrpgleref/P3312.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P5269';
dsply theCharVar;
callp localProc();
P2099();
P2483();
P3312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5269 in the procedure';
end-proc;