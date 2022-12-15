**free

ctl-opt dftactgrp(*no);

dcl-pi P3088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P3088';
dsply theCharVar;
callp localProc();
P84();
P263();
P64();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3088 in the procedure';
end-proc;