**free

ctl-opt dftactgrp(*no);

dcl-pi P4075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3344.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P2894.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P4075';
dsply theCharVar;
callp localProc();
P3344();
P31();
P2894();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4075 in the procedure';
end-proc;