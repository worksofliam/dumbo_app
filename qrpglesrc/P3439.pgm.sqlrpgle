**free

ctl-opt dftactgrp(*no);

dcl-pi P3439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3292.rpgleinc'
/copy 'qrpgleref/P2547.rpgleinc'
/copy 'qrpgleref/P509.rpgleinc'

dcl-ds theTable extname('T1085') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1085 LIMIT 1;

theCharVar = 'Hello from P3439';
dsply theCharVar;
callp localProc();
P3292();
P2547();
P509();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3439 in the procedure';
end-proc;