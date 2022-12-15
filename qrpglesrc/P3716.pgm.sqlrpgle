**free

ctl-opt dftactgrp(*no);

dcl-pi P3716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2167.rpgleinc'
/copy 'qrpgleref/P1411.rpgleinc'
/copy 'qrpgleref/P1454.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P3716';
dsply theCharVar;
callp localProc();
P2167();
P1411();
P1454();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3716 in the procedure';
end-proc;