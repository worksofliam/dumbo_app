**free

ctl-opt dftactgrp(*no);

dcl-pi P1840;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P1840';
dsply theCharVar;
callp localProc();
P480();
P890();
P1598();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1840 in the procedure';
end-proc;