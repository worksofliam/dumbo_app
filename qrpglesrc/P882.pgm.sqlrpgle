**free

ctl-opt dftactgrp(*no);

dcl-pi P882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P882';
dsply theCharVar;
callp localProc();
P553();
P334();
P414();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P882 in the procedure';
end-proc;