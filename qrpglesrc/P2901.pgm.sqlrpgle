**free

ctl-opt dftactgrp(*no);

dcl-pi P2901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2237.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P1613.rpgleinc'

dcl-ds theTable extname('T949') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T949 LIMIT 1;

theCharVar = 'Hello from P2901';
dsply theCharVar;
callp localProc();
P2237();
P1118();
P1613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2901 in the procedure';
end-proc;