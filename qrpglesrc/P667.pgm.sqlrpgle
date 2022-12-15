**free

ctl-opt dftactgrp(*no);

dcl-pi P667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'

dcl-ds theTable extname('T648') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T648 LIMIT 1;

theCharVar = 'Hello from P667';
dsply theCharVar;
callp localProc();
P327();
P379();
P662();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P667 in the procedure';
end-proc;