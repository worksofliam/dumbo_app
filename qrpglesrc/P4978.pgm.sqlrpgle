**free

ctl-opt dftactgrp(*no);

dcl-pi P4978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P3722.rpgleinc'
/copy 'qrpgleref/P1812.rpgleinc'

dcl-ds theTable extname('T1477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1477 LIMIT 1;

theCharVar = 'Hello from P4978';
dsply theCharVar;
callp localProc();
P791();
P3722();
P1812();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4978 in the procedure';
end-proc;