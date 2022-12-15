**free

ctl-opt dftactgrp(*no);

dcl-pi P1285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds theTable extname('T1062') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1062 LIMIT 1;

theCharVar = 'Hello from P1285';
dsply theCharVar;
callp localProc();
P812();
P141();
P617();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1285 in the procedure';
end-proc;