**free

ctl-opt dftactgrp(*no);

dcl-pi P1221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'
/copy 'qrpgleref/P1184.rpgleinc'

dcl-ds theTable extname('T436') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T436 LIMIT 1;

theCharVar = 'Hello from P1221';
dsply theCharVar;
callp localProc();
P723();
P937();
P1184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1221 in the procedure';
end-proc;