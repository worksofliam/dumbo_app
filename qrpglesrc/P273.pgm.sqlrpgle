**free

ctl-opt dftactgrp(*no);

dcl-pi P273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds theTable extname('T625') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T625 LIMIT 1;

theCharVar = 'Hello from P273';
dsply theCharVar;
callp localProc();
P46();
P204();
P69();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P273 in the procedure';
end-proc;