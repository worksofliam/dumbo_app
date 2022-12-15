**free

ctl-opt dftactgrp(*no);

dcl-pi P641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P641';
dsply theCharVar;
callp localProc();
P19();
P233();
P376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P641 in the procedure';
end-proc;