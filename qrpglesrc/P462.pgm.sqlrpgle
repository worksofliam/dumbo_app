**free

ctl-opt dftactgrp(*no);

dcl-pi P462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P462';
dsply theCharVar;
callp localProc();
P45();
P294();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P462 in the procedure';
end-proc;