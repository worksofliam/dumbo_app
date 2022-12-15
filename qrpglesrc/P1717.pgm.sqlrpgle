**free

ctl-opt dftactgrp(*no);

dcl-pi P1717;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P1508.rpgleinc'

dcl-ds theTable extname('T620') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T620 LIMIT 1;

theCharVar = 'Hello from P1717';
dsply theCharVar;
callp localProc();
P354();
P391();
P1508();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1717 in the procedure';
end-proc;