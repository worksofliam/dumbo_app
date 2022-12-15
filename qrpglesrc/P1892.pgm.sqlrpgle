**free

ctl-opt dftactgrp(*no);

dcl-pi P1892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P1892';
dsply theCharVar;
callp localProc();
P963();
P800();
P235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1892 in the procedure';
end-proc;