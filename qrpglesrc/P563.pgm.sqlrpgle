**free

ctl-opt dftactgrp(*no);

dcl-pi P563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'

dcl-ds theTable extname('T1689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1689 LIMIT 1;

theCharVar = 'Hello from P563';
dsply theCharVar;
callp localProc();
P166();
P177();
P143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P563 in the procedure';
end-proc;