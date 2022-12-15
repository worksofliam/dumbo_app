**free

ctl-opt dftactgrp(*no);

dcl-pi P2983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1943.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'

dcl-ds theTable extname('T1195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1195 LIMIT 1;

theCharVar = 'Hello from P2983';
dsply theCharVar;
callp localProc();
P1943();
P810();
P1532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2983 in the procedure';
end-proc;