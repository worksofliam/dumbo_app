**free

ctl-opt dftactgrp(*no);

dcl-pi P354;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P184.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P354';
dsply theCharVar;
callp localProc();
P184();
P334();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P354 in the procedure';
end-proc;