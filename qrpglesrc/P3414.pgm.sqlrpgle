**free

ctl-opt dftactgrp(*no);

dcl-pi P3414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1217.rpgleinc'
/copy 'qrpgleref/P1514.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T1408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1408 LIMIT 1;

theCharVar = 'Hello from P3414';
dsply theCharVar;
callp localProc();
P1217();
P1514();
P199();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3414 in the procedure';
end-proc;