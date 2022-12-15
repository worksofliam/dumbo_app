**free

ctl-opt dftactgrp(*no);

dcl-pi P1051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T128') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T128 LIMIT 1;

theCharVar = 'Hello from P1051';
dsply theCharVar;
callp localProc();
P590();
P624();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1051 in the procedure';
end-proc;