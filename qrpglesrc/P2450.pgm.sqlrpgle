**free

ctl-opt dftactgrp(*no);

dcl-pi P2450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P1954.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'

dcl-ds theTable extname('T754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T754 LIMIT 1;

theCharVar = 'Hello from P2450';
dsply theCharVar;
callp localProc();
P14();
P1954();
P1065();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2450 in the procedure';
end-proc;