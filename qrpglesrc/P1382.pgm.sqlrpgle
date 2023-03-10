**free

ctl-opt dftactgrp(*no);

dcl-pi P1382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1269.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P194.rpgleinc'

dcl-ds theTable extname('T1710') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1710 LIMIT 1;

theCharVar = 'Hello from P1382';
dsply theCharVar;
callp localProc();
P1269();
P850();
P194();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1382 in the procedure';
end-proc;