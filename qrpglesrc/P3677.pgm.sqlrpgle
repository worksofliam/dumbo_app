**free

ctl-opt dftactgrp(*no);

dcl-pi P3677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2126.rpgleinc'
/copy 'qrpgleref/P2301.rpgleinc'
/copy 'qrpgleref/P1657.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P3677';
dsply theCharVar;
callp localProc();
P2126();
P2301();
P1657();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3677 in the procedure';
end-proc;