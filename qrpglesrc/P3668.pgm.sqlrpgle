**free

ctl-opt dftactgrp(*no);

dcl-pi P3668;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2208.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P3668';
dsply theCharVar;
callp localProc();
P2208();
P1847();
P1465();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3668 in the procedure';
end-proc;