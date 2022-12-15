**free

ctl-opt dftactgrp(*no);

dcl-pi P2902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2000.rpgleinc'
/copy 'qrpgleref/P1378.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'

dcl-ds theTable extname('T699') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T699 LIMIT 1;

theCharVar = 'Hello from P2902';
dsply theCharVar;
callp localProc();
P2000();
P1378();
P2111();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2902 in the procedure';
end-proc;