**free

ctl-opt dftactgrp(*no);

dcl-pi P315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P153.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P315';
dsply theCharVar;
callp localProc();
P153();
P17();
P12();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P315 in the procedure';
end-proc;