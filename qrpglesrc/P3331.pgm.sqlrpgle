**free

ctl-opt dftactgrp(*no);

dcl-pi P3331;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2529.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'
/copy 'qrpgleref/P2382.rpgleinc'

dcl-ds theTable extname('T401') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T401 LIMIT 1;

theCharVar = 'Hello from P3331';
dsply theCharVar;
callp localProc();
P2529();
P987();
P2382();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3331 in the procedure';
end-proc;