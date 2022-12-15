**free

ctl-opt dftactgrp(*no);

dcl-pi P1286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1235.rpgleinc'
/copy 'qrpgleref/P1010.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P1286';
dsply theCharVar;
callp localProc();
P1235();
P1010();
P136();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1286 in the procedure';
end-proc;