**free

ctl-opt dftactgrp(*no);

dcl-pi P925;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'

dcl-ds theTable extname('T324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T324 LIMIT 1;

theCharVar = 'Hello from P925';
dsply theCharVar;
callp localProc();
P444();
P333();
P659();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P925 in the procedure';
end-proc;