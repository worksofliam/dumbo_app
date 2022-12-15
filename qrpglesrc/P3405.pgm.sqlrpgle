**free

ctl-opt dftactgrp(*no);

dcl-pi P3405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1631.rpgleinc'
/copy 'qrpgleref/P1478.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P3405';
dsply theCharVar;
callp localProc();
P1631();
P1478();
P514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3405 in the procedure';
end-proc;