**free

ctl-opt dftactgrp(*no);

dcl-pi P1818;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1694.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P1818';
dsply theCharVar;
callp localProc();
P1694();
P313();
P1678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1818 in the procedure';
end-proc;