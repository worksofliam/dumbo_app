**free

ctl-opt dftactgrp(*no);

dcl-pi P1863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1857.rpgleinc'
/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'

dcl-ds theTable extname('T533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T533 LIMIT 1;

theCharVar = 'Hello from P1863';
dsply theCharVar;
callp localProc();
P1857();
P351();
P456();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1863 in the procedure';
end-proc;