**free

ctl-opt dftactgrp(*no);

dcl-pi P798;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P798';
dsply theCharVar;
callp localProc();
P682();
P2();
P346();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P798 in the procedure';
end-proc;