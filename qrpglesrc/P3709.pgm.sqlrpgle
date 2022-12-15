**free

ctl-opt dftactgrp(*no);

dcl-pi P3709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2643.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P2160.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P3709';
dsply theCharVar;
callp localProc();
P2643();
P682();
P2160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3709 in the procedure';
end-proc;