**free

ctl-opt dftactgrp(*no);

dcl-pi P1317;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P342.rpgleinc'

dcl-ds theTable extname('T238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T238 LIMIT 1;

theCharVar = 'Hello from P1317';
dsply theCharVar;
callp localProc();
P227();
P1172();
P342();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1317 in the procedure';
end-proc;