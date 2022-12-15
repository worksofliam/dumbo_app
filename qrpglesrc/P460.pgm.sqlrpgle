**free

ctl-opt dftactgrp(*no);

dcl-pi P460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P144.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T867 LIMIT 1;

theCharVar = 'Hello from P460';
dsply theCharVar;
callp localProc();
P144();
P16();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P460 in the procedure';
end-proc;