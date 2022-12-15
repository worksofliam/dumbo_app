**free

ctl-opt dftactgrp(*no);

dcl-pi P4634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1114.rpgleinc'
/copy 'qrpgleref/P1685.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'

dcl-ds theTable extname('T1548') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1548 LIMIT 1;

theCharVar = 'Hello from P4634';
dsply theCharVar;
callp localProc();
P1114();
P1685();
P1139();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4634 in the procedure';
end-proc;