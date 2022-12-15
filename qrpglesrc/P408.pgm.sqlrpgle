**free

ctl-opt dftactgrp(*no);

dcl-pi P408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'

dcl-ds theTable extname('T622') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T622 LIMIT 1;

theCharVar = 'Hello from P408';
dsply theCharVar;
callp localProc();
P216();
P35();
P108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P408 in the procedure';
end-proc;