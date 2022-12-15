**free

ctl-opt dftactgrp(*no);

dcl-pi P1371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P877.rpgleinc'

dcl-ds theTable extname('T79') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T79 LIMIT 1;

theCharVar = 'Hello from P1371';
dsply theCharVar;
callp localProc();
P1117();
P118();
P877();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1371 in the procedure';
end-proc;