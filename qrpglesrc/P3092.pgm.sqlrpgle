**free

ctl-opt dftactgrp(*no);

dcl-pi P3092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P937.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'
/copy 'qrpgleref/P2115.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P3092';
dsply theCharVar;
callp localProc();
P937();
P1074();
P2115();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3092 in the procedure';
end-proc;