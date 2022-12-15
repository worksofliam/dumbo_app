**free

ctl-opt dftactgrp(*no);

dcl-pi P407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T182') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T182 LIMIT 1;

theCharVar = 'Hello from P407';
dsply theCharVar;
callp localProc();
P183();
P55();
P152();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P407 in the procedure';
end-proc;