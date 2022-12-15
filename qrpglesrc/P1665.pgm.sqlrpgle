**free

ctl-opt dftactgrp(*no);

dcl-pi P1665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'
/copy 'qrpgleref/P1641.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P1665';
dsply theCharVar;
callp localProc();
P1237();
P1508();
P1641();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1665 in the procedure';
end-proc;