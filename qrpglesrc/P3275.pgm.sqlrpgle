**free

ctl-opt dftactgrp(*no);

dcl-pi P3275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1404.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P2765.rpgleinc'

dcl-ds theTable extname('T1765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1765 LIMIT 1;

theCharVar = 'Hello from P3275';
dsply theCharVar;
callp localProc();
P1404();
P48();
P2765();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3275 in the procedure';
end-proc;