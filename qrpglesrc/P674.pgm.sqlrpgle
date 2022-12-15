**free

ctl-opt dftactgrp(*no);

dcl-pi P674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'

dcl-ds theTable extname('T622') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T622 LIMIT 1;

theCharVar = 'Hello from P674';
dsply theCharVar;
callp localProc();
P372();
P103();
P320();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P674 in the procedure';
end-proc;