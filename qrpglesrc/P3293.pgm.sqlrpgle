**free

ctl-opt dftactgrp(*no);

dcl-pi P3293;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P147.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds theTable extname('T1354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1354 LIMIT 1;

theCharVar = 'Hello from P3293';
dsply theCharVar;
callp localProc();
P70();
P147();
P451();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3293 in the procedure';
end-proc;