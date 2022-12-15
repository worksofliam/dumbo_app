**free

ctl-opt dftactgrp(*no);

dcl-pi P3147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P1936.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P3147';
dsply theCharVar;
callp localProc();
P431();
P321();
P1936();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3147 in the procedure';
end-proc;