**free

ctl-opt dftactgrp(*no);

dcl-pi P3122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2304.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P2712.rpgleinc'

dcl-ds theTable extname('T1391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1391 LIMIT 1;

theCharVar = 'Hello from P3122';
dsply theCharVar;
callp localProc();
P2304();
P71();
P2712();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3122 in the procedure';
end-proc;