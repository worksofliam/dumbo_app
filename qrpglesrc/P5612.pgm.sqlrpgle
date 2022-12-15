**free

ctl-opt dftactgrp(*no);

dcl-pi P5612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3406.rpgleinc'
/copy 'qrpgleref/P1075.rpgleinc'
/copy 'qrpgleref/P5137.rpgleinc'

dcl-ds theTable extname('T708') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T708 LIMIT 1;

theCharVar = 'Hello from P5612';
dsply theCharVar;
callp localProc();
P3406();
P1075();
P5137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5612 in the procedure';
end-proc;