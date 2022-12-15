**free

ctl-opt dftactgrp(*no);

dcl-pi P3904;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2632.rpgleinc'
/copy 'qrpgleref/P3167.rpgleinc'
/copy 'qrpgleref/P1913.rpgleinc'

dcl-ds theTable extname('T1229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1229 LIMIT 1;

theCharVar = 'Hello from P3904';
dsply theCharVar;
callp localProc();
P2632();
P3167();
P1913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3904 in the procedure';
end-proc;