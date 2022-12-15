**free

ctl-opt dftactgrp(*no);

dcl-pi P1917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P1403.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'

dcl-ds theTable extname('T539') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T539 LIMIT 1;

theCharVar = 'Hello from P1917';
dsply theCharVar;
callp localProc();
P233();
P1403();
P872();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1917 in the procedure';
end-proc;