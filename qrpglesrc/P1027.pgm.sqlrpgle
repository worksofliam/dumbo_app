**free

ctl-opt dftactgrp(*no);

dcl-pi P1027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P615.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds theTable extname('T226') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T226 LIMIT 1;

theCharVar = 'Hello from P1027';
dsply theCharVar;
callp localProc();
P615();
P718();
P222();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1027 in the procedure';
end-proc;