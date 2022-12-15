**free

ctl-opt dftactgrp(*no);

dcl-pi P865;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'

dcl-ds theTable extname('T62') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T62 LIMIT 1;

theCharVar = 'Hello from P865';
dsply theCharVar;
callp localProc();
P108();
P826();
P553();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P865 in the procedure';
end-proc;