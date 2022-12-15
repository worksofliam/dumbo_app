**free

ctl-opt dftactgrp(*no);

dcl-pi P1985;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P1368.rpgleinc'

dcl-ds theTable extname('T576') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T576 LIMIT 1;

theCharVar = 'Hello from P1985';
dsply theCharVar;
callp localProc();
P433();
P573();
P1368();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1985 in the procedure';
end-proc;