**free

ctl-opt dftactgrp(*no);

dcl-pi P3555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2857.rpgleinc'
/copy 'qrpgleref/P2038.rpgleinc'
/copy 'qrpgleref/P1185.rpgleinc'

dcl-ds theTable extname('T156') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T156 LIMIT 1;

theCharVar = 'Hello from P3555';
dsply theCharVar;
callp localProc();
P2857();
P2038();
P1185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3555 in the procedure';
end-proc;