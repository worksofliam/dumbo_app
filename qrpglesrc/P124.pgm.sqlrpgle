**free

ctl-opt dftactgrp(*no);

dcl-pi P124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P124';
dsply theCharVar;
callp localProc();
P88();
P14();
P81();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P124 in the procedure';
end-proc;