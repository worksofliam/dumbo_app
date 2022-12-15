**free

ctl-opt dftactgrp(*no);

dcl-pi P3353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P2325.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds theTable extname('T685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T685 LIMIT 1;

theCharVar = 'Hello from P3353';
dsply theCharVar;
callp localProc();
P1101();
P2325();
P488();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3353 in the procedure';
end-proc;