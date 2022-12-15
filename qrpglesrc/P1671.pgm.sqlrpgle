**free

ctl-opt dftactgrp(*no);

dcl-pi P1671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1433.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P138.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P1671';
dsply theCharVar;
callp localProc();
P1433();
P697();
P138();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1671 in the procedure';
end-proc;