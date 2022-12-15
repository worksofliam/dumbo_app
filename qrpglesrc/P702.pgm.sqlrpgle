**free

ctl-opt dftactgrp(*no);

dcl-pi P702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P702';
dsply theCharVar;
callp localProc();
P655();
P417();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P702 in the procedure';
end-proc;