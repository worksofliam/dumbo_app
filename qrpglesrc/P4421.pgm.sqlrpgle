**free

ctl-opt dftactgrp(*no);

dcl-pi P4421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2915.rpgleinc'
/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'

dcl-ds theTable extname('T1157') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1157 LIMIT 1;

theCharVar = 'Hello from P4421';
dsply theCharVar;
callp localProc();
P2915();
P1775();
P1050();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4421 in the procedure';
end-proc;