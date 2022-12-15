**free

ctl-opt dftactgrp(*no);

dcl-pi P994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P706.rpgleinc'

dcl-ds theTable extname('T997') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T997 LIMIT 1;

theCharVar = 'Hello from P994';
dsply theCharVar;
callp localProc();
P817();
P175();
P706();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P994 in the procedure';
end-proc;