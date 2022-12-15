**free

ctl-opt dftactgrp(*no);

dcl-pi P4340;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3456.rpgleinc'
/copy 'qrpgleref/P3877.rpgleinc'
/copy 'qrpgleref/P810.rpgleinc'

dcl-ds theTable extname('T1230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1230 LIMIT 1;

theCharVar = 'Hello from P4340';
dsply theCharVar;
callp localProc();
P3456();
P3877();
P810();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4340 in the procedure';
end-proc;