**free

ctl-opt dftactgrp(*no);

dcl-pi P166;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T1536') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1536 LIMIT 1;

theCharVar = 'Hello from P166';
dsply theCharVar;
callp localProc();
P101();
P81();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P166 in the procedure';
end-proc;