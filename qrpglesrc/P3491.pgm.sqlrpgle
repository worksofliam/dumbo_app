**free

ctl-opt dftactgrp(*no);

dcl-pi P3491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T17') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T17 LIMIT 1;

theCharVar = 'Hello from P3491';
dsply theCharVar;
callp localProc();
P221();
P113();
P226();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3491 in the procedure';
end-proc;