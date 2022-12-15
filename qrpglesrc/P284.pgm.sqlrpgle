**free

ctl-opt dftactgrp(*no);

dcl-pi P284;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P284';
dsply theCharVar;
callp localProc();
P137();
P275();
P257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P284 in the procedure';
end-proc;