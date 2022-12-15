**free

ctl-opt dftactgrp(*no);

dcl-pi P4346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3752.rpgleinc'
/copy 'qrpgleref/P3827.rpgleinc'
/copy 'qrpgleref/P2631.rpgleinc'

dcl-ds theTable extname('T1206') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1206 LIMIT 1;

theCharVar = 'Hello from P4346';
dsply theCharVar;
callp localProc();
P3752();
P3827();
P2631();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4346 in the procedure';
end-proc;