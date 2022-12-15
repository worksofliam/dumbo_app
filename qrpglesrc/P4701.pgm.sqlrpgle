**free

ctl-opt dftactgrp(*no);

dcl-pi P4701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1713.rpgleinc'
/copy 'qrpgleref/P2461.rpgleinc'
/copy 'qrpgleref/P1903.rpgleinc'

dcl-ds theTable extname('T1032') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1032 LIMIT 1;

theCharVar = 'Hello from P4701';
dsply theCharVar;
callp localProc();
P1713();
P2461();
P1903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4701 in the procedure';
end-proc;