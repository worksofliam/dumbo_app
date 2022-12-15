**free

ctl-opt dftactgrp(*no);

dcl-pi P315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T238 LIMIT 1;

theCharVar = 'Hello from P315';
dsply theCharVar;
callp localProc();
P39();
P186();
P177();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P315 in the procedure';
end-proc;