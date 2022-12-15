**free

ctl-opt dftactgrp(*no);

dcl-pi P2280;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P2194.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'

dcl-ds theTable extname('T400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T400 LIMIT 1;

theCharVar = 'Hello from P2280';
dsply theCharVar;
callp localProc();
P880();
P2194();
P864();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2280 in the procedure';
end-proc;