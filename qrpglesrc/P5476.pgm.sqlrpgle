**free

ctl-opt dftactgrp(*no);

dcl-pi P5476;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4212.rpgleinc'
/copy 'qrpgleref/P3944.rpgleinc'
/copy 'qrpgleref/P3690.rpgleinc'

dcl-ds theTable extname('T1480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1480 LIMIT 1;

theCharVar = 'Hello from P5476';
dsply theCharVar;
callp localProc();
P4212();
P3944();
P3690();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5476 in the procedure';
end-proc;