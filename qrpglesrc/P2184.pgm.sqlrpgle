**free

ctl-opt dftactgrp(*no);

dcl-pi P2184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1240.rpgleinc'
/copy 'qrpgleref/P2046.rpgleinc'
/copy 'qrpgleref/P2094.rpgleinc'

dcl-ds theTable extname('T530') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T530 LIMIT 1;

theCharVar = 'Hello from P2184';
dsply theCharVar;
callp localProc();
P1240();
P2046();
P2094();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2184 in the procedure';
end-proc;