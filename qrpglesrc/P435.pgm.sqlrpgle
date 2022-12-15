**free

ctl-opt dftactgrp(*no);

dcl-pi P435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T1') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1 LIMIT 1;

theCharVar = 'Hello from P435';
dsply theCharVar;
callp localProc();
P347();
P54();
P315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P435 in the procedure';
end-proc;