**free

ctl-opt dftactgrp(*no);

dcl-pi P3249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'
/copy 'qrpgleref/P2118.rpgleinc'

dcl-ds theTable extname('T86') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T86 LIMIT 1;

theCharVar = 'Hello from P3249';
dsply theCharVar;
callp localProc();
P580();
P916();
P2118();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3249 in the procedure';
end-proc;