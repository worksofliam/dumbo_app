**free

ctl-opt dftactgrp(*no);

dcl-pi P3443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P2475.rpgleinc'
/copy 'qrpgleref/P1975.rpgleinc'

dcl-ds theTable extname('T873') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T873 LIMIT 1;

theCharVar = 'Hello from P3443';
dsply theCharVar;
callp localProc();
P1604();
P2475();
P1975();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3443 in the procedure';
end-proc;