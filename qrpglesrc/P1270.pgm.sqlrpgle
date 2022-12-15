**free

ctl-opt dftactgrp(*no);

dcl-pi P1270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1270';
dsply theCharVar;
callp localProc();
P174();
P1222();
P302();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1270 in the procedure';
end-proc;