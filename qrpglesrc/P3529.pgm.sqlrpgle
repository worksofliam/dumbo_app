**free

ctl-opt dftactgrp(*no);

dcl-pi P3529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3008.rpgleinc'
/copy 'qrpgleref/P1519.rpgleinc'
/copy 'qrpgleref/P1907.rpgleinc'

dcl-ds theTable extname('T1830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1830 LIMIT 1;

theCharVar = 'Hello from P3529';
dsply theCharVar;
callp localProc();
P3008();
P1519();
P1907();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3529 in the procedure';
end-proc;