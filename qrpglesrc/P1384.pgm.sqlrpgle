**free

ctl-opt dftactgrp(*no);

dcl-pi P1384;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'

dcl-ds theTable extname('T1821') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1821 LIMIT 1;

theCharVar = 'Hello from P1384';
dsply theCharVar;
callp localProc();
P8();
P915();
P1286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1384 in the procedure';
end-proc;