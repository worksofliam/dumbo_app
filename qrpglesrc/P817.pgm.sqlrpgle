**free

ctl-opt dftactgrp(*no);

dcl-pi P817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P817';
dsply theCharVar;
callp localProc();
P516();
P588();
P276();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P817 in the procedure';
end-proc;