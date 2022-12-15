**free

ctl-opt dftactgrp(*no);

dcl-pi P1676;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P189.rpgleinc'
/copy 'qrpgleref/P1638.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds theTable extname('T1130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1130 LIMIT 1;

theCharVar = 'Hello from P1676';
dsply theCharVar;
callp localProc();
P189();
P1638();
P422();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1676 in the procedure';
end-proc;