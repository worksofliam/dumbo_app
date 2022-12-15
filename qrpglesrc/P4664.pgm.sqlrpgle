**free

ctl-opt dftactgrp(*no);

dcl-pi P4664;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2492.rpgleinc'
/copy 'qrpgleref/P3115.rpgleinc'
/copy 'qrpgleref/P2715.rpgleinc'

dcl-ds theTable extname('T1164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1164 LIMIT 1;

theCharVar = 'Hello from P4664';
dsply theCharVar;
callp localProc();
P2492();
P3115();
P2715();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4664 in the procedure';
end-proc;