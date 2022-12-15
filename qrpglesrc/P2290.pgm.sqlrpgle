**free

ctl-opt dftactgrp(*no);

dcl-pi P2290;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'

dcl-ds theTable extname('T463') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T463 LIMIT 1;

theCharVar = 'Hello from P2290';
dsply theCharVar;
callp localProc();
P391();
P584();
P445();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2290 in the procedure';
end-proc;