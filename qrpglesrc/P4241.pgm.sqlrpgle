**free

ctl-opt dftactgrp(*no);

dcl-pi P4241;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2124.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P3300.rpgleinc'

dcl-ds theTable extname('T120') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T120 LIMIT 1;

theCharVar = 'Hello from P4241';
dsply theCharVar;
callp localProc();
P2124();
P926();
P3300();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4241 in the procedure';
end-proc;