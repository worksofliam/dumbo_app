**free

ctl-opt dftactgrp(*no);

dcl-pi P3655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1273.rpgleinc'
/copy 'qrpgleref/P2127.rpgleinc'
/copy 'qrpgleref/P1896.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P3655';
dsply theCharVar;
callp localProc();
P1273();
P2127();
P1896();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3655 in the procedure';
end-proc;