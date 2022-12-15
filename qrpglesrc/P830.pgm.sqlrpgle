**free

ctl-opt dftactgrp(*no);

dcl-pi P830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P751.rpgleinc'

dcl-ds theTable extname('T1141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1141 LIMIT 1;

theCharVar = 'Hello from P830';
dsply theCharVar;
callp localProc();
P701();
P591();
P751();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P830 in the procedure';
end-proc;