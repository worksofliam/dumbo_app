**free

ctl-opt dftactgrp(*no);

dcl-pi P96;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T1629') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1629 LIMIT 1;

theCharVar = 'Hello from P96';
dsply theCharVar;
callp localProc();
P83();
P67();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P96 in the procedure';
end-proc;