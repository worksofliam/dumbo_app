**free

ctl-opt dftactgrp(*no);

dcl-pi P4864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P3188.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'

dcl-ds theTable extname('T659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T659 LIMIT 1;

theCharVar = 'Hello from P4864';
dsply theCharVar;
callp localProc();
P175();
P3188();
P777();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4864 in the procedure';
end-proc;