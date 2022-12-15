**free

ctl-opt dftactgrp(*no);

dcl-pi P3688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2578.rpgleinc'
/copy 'qrpgleref/P2604.rpgleinc'
/copy 'qrpgleref/P3575.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P3688';
dsply theCharVar;
callp localProc();
P2578();
P2604();
P3575();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3688 in the procedure';
end-proc;