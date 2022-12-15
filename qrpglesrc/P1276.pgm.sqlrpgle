**free

ctl-opt dftactgrp(*no);

dcl-pi P1276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds theTable extname('T1743') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1743 LIMIT 1;

theCharVar = 'Hello from P1276';
dsply theCharVar;
callp localProc();
P324();
P417();
P802();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1276 in the procedure';
end-proc;