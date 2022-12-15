**free

ctl-opt dftactgrp(*no);

dcl-pi P2847;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1818.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'

dcl-ds theTable extname('T777') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T777 LIMIT 1;

theCharVar = 'Hello from P2847';
dsply theCharVar;
callp localProc();
P1818();
P1161();
P1975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2847 in the procedure';
end-proc;