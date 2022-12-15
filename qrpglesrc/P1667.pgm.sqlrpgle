**free

ctl-opt dftactgrp(*no);

dcl-pi P1667;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1490.rpgleinc'
/copy 'qrpgleref/P778.rpgleinc'
/copy 'qrpgleref/P1114.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P1667';
dsply theCharVar;
callp localProc();
P1490();
P778();
P1114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1667 in the procedure';
end-proc;