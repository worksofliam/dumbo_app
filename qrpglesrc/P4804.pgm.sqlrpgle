**free

ctl-opt dftactgrp(*no);

dcl-pi P4804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P4055.rpgleinc'
/copy 'qrpgleref/P4074.rpgleinc'

dcl-ds theTable extname('T740') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T740 LIMIT 1;

theCharVar = 'Hello from P4804';
dsply theCharVar;
callp localProc();
P1034();
P4055();
P4074();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4804 in the procedure';
end-proc;