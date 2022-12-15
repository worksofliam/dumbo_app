**free

ctl-opt dftactgrp(*no);

dcl-pi P1144;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T448 LIMIT 1;

theCharVar = 'Hello from P1144';
dsply theCharVar;
callp localProc();
P95();
P441();
P255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1144 in the procedure';
end-proc;