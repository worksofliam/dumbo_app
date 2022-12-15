**free

ctl-opt dftactgrp(*no);

dcl-pi P4073;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P743.rpgleinc'
/copy 'qrpgleref/P3662.rpgleinc'
/copy 'qrpgleref/P673.rpgleinc'

dcl-ds theTable extname('T92') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T92 LIMIT 1;

theCharVar = 'Hello from P4073';
dsply theCharVar;
callp localProc();
P743();
P3662();
P673();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4073 in the procedure';
end-proc;