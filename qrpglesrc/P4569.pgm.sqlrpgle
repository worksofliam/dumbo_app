**free

ctl-opt dftactgrp(*no);

dcl-pi P4569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3302.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'
/copy 'qrpgleref/P1351.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P4569';
dsply theCharVar;
callp localProc();
P3302();
P2001();
P1351();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4569 in the procedure';
end-proc;