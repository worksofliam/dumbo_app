**free

ctl-opt dftactgrp(*no);

dcl-pi P4579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1330.rpgleinc'
/copy 'qrpgleref/P4407.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds theTable extname('T592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T592 LIMIT 1;

theCharVar = 'Hello from P4579';
dsply theCharVar;
callp localProc();
P1330();
P4407();
P976();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4579 in the procedure';
end-proc;