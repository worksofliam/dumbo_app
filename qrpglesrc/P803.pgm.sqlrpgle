**free

ctl-opt dftactgrp(*no);

dcl-pi P803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P357.rpgleinc'

dcl-ds theTable extname('T1088') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1088 LIMIT 1;

theCharVar = 'Hello from P803';
dsply theCharVar;
callp localProc();
P689();
P259();
P357();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P803 in the procedure';
end-proc;