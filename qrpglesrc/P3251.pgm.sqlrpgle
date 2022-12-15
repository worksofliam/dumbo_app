**free

ctl-opt dftactgrp(*no);

dcl-pi P3251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1487.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P2258.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P3251';
dsply theCharVar;
callp localProc();
P1487();
P357();
P2258();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3251 in the procedure';
end-proc;