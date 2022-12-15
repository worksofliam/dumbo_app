**free

ctl-opt dftactgrp(*no);

dcl-pi P4940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P4186.rpgleinc'
/copy 'qrpgleref/P4815.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P4940';
dsply theCharVar;
callp localProc();
P1135();
P4186();
P4815();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4940 in the procedure';
end-proc;