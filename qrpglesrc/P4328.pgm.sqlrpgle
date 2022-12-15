**free

ctl-opt dftactgrp(*no);

dcl-pi P4328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2160.rpgleinc'
/copy 'qrpgleref/P2275.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T279') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T279 LIMIT 1;

theCharVar = 'Hello from P4328';
dsply theCharVar;
callp localProc();
P2160();
P2275();
P630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4328 in the procedure';
end-proc;