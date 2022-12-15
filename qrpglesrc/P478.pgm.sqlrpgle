**free

ctl-opt dftactgrp(*no);

dcl-pi P478;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P478';
dsply theCharVar;
callp localProc();
P117();
P90();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P478 in the procedure';
end-proc;