**free

ctl-opt dftactgrp(*no);

dcl-pi P3663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P3308.rpgleinc'

dcl-ds theTable extname('T1214') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1214 LIMIT 1;

theCharVar = 'Hello from P3663';
dsply theCharVar;
callp localProc();
P673();
P698();
P3308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3663 in the procedure';
end-proc;