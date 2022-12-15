**free

ctl-opt dftactgrp(*no);

dcl-pi P2763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1991.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds theTable extname('T1233') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1233 LIMIT 1;

theCharVar = 'Hello from P2763';
dsply theCharVar;
callp localProc();
P1991();
P5();
P1678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2763 in the procedure';
end-proc;