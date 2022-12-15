**free

ctl-opt dftactgrp(*no);

dcl-pi P1950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'

dcl-ds theTable extname('T1570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1570 LIMIT 1;

theCharVar = 'Hello from P1950';
dsply theCharVar;
callp localProc();
P966();
P26();
P162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1950 in the procedure';
end-proc;