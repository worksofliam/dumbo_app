**free

ctl-opt dftactgrp(*no);

dcl-pi P2278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1279.rpgleinc'
/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'

dcl-ds theTable extname('T771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T771 LIMIT 1;

theCharVar = 'Hello from P2278';
dsply theCharVar;
callp localProc();
P1279();
P1235();
P896();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2278 in the procedure';
end-proc;