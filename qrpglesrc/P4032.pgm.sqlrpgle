**free

ctl-opt dftactgrp(*no);

dcl-pi P4032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3326.rpgleinc'
/copy 'qrpgleref/P3154.rpgleinc'
/copy 'qrpgleref/P3737.rpgleinc'

dcl-ds theTable extname('T366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T366 LIMIT 1;

theCharVar = 'Hello from P4032';
dsply theCharVar;
callp localProc();
P3326();
P3154();
P3737();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4032 in the procedure';
end-proc;