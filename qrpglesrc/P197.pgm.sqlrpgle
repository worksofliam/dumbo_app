**free

ctl-opt dftactgrp(*no);

dcl-pi P197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P197';
dsply theCharVar;
callp localProc();
P98();
P104();
P160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P197 in the procedure';
end-proc;