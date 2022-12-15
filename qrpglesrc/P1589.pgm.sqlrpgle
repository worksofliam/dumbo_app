**free

ctl-opt dftactgrp(*no);

dcl-pi P1589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1209.rpgleinc'
/copy 'qrpgleref/P1430.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'

dcl-ds theTable extname('T162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T162 LIMIT 1;

theCharVar = 'Hello from P1589';
dsply theCharVar;
callp localProc();
P1209();
P1430();
P893();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1589 in the procedure';
end-proc;