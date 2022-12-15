**free

ctl-opt dftactgrp(*no);

dcl-pi P3150;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P2939.rpgleinc'
/copy 'qrpgleref/P2061.rpgleinc'

dcl-ds theTable extname('T1236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1236 LIMIT 1;

theCharVar = 'Hello from P3150';
dsply theCharVar;
callp localProc();
P2416();
P2939();
P2061();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3150 in the procedure';
end-proc;