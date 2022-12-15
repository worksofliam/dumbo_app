**free

ctl-opt dftactgrp(*no);

dcl-pi P2199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P611.rpgleinc'

dcl-ds theTable extname('T531') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T531 LIMIT 1;

theCharVar = 'Hello from P2199';
dsply theCharVar;
callp localProc();
P147();
P1374();
P611();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2199 in the procedure';
end-proc;