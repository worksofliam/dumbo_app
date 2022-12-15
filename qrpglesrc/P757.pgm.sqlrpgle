**free

ctl-opt dftactgrp(*no);

dcl-pi P757;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P565.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P757';
dsply theCharVar;
callp localProc();
P565();
P380();
P247();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P757 in the procedure';
end-proc;