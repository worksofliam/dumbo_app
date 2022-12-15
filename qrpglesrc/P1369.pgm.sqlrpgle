**free

ctl-opt dftactgrp(*no);

dcl-pi P1369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'

dcl-ds theTable extname('T91') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T91 LIMIT 1;

theCharVar = 'Hello from P1369';
dsply theCharVar;
callp localProc();
P730();
P487();
P1023();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1369 in the procedure';
end-proc;