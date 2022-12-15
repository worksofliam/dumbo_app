**free

ctl-opt dftactgrp(*no);

dcl-pi P5084;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P3637.rpgleinc'

dcl-ds theTable extname('T1142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1142 LIMIT 1;

theCharVar = 'Hello from P5084';
dsply theCharVar;
callp localProc();
P32();
P2236();
P3637();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5084 in the procedure';
end-proc;