**free

ctl-opt dftactgrp(*no);

dcl-pi P3128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T633 LIMIT 1;

theCharVar = 'Hello from P3128';
dsply theCharVar;
callp localProc();
P325();
P1337();
P372();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3128 in the procedure';
end-proc;