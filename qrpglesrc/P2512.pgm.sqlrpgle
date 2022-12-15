**free

ctl-opt dftactgrp(*no);

dcl-pi P2512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1147.rpgleinc'
/copy 'qrpgleref/P2453.rpgleinc'
/copy 'qrpgleref/P1525.rpgleinc'

dcl-ds theTable extname('T331') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T331 LIMIT 1;

theCharVar = 'Hello from P2512';
dsply theCharVar;
callp localProc();
P1147();
P2453();
P1525();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2512 in the procedure';
end-proc;