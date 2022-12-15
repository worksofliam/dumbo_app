**free

ctl-opt dftactgrp(*no);

dcl-pi P1532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T690') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T690 LIMIT 1;

theCharVar = 'Hello from P1532';
dsply theCharVar;
callp localProc();
P258();
P653();
P235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1532 in the procedure';
end-proc;