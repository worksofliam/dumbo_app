**free

ctl-opt dftactgrp(*no);

dcl-pi P3303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3129.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P1521.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P3303';
dsply theCharVar;
callp localProc();
P3129();
P337();
P1521();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3303 in the procedure';
end-proc;