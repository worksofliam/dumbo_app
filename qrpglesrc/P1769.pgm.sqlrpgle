**free

ctl-opt dftactgrp(*no);

dcl-pi P1769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P754.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P1769';
dsply theCharVar;
callp localProc();
P994();
P754();
P180();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1769 in the procedure';
end-proc;