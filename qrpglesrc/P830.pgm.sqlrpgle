**free

ctl-opt dftactgrp(*no);

dcl-pi P830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P200.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T1205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1205 LIMIT 1;

theCharVar = 'Hello from P830';
dsply theCharVar;
callp localProc();
P200();
P818();
P168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P830 in the procedure';
end-proc;