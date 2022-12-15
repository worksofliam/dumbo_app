**free

ctl-opt dftactgrp(*no);

dcl-pi P2891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2228.rpgleinc'
/copy 'qrpgleref/P2169.rpgleinc'
/copy 'qrpgleref/P1611.rpgleinc'

dcl-ds theTable extname('T1194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1194 LIMIT 1;

theCharVar = 'Hello from P2891';
dsply theCharVar;
callp localProc();
P2228();
P2169();
P1611();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2891 in the procedure';
end-proc;