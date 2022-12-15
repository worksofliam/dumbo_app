**free

ctl-opt dftactgrp(*no);

dcl-pi P5267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1856.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds theTable extname('T838') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T838 LIMIT 1;

theCharVar = 'Hello from P5267';
dsply theCharVar;
callp localProc();
P1856();
P235();
P1448();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5267 in the procedure';
end-proc;