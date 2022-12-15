**free

ctl-opt dftactgrp(*no);

dcl-pi P735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P467.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P643.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P735';
dsply theCharVar;
callp localProc();
P467();
P260();
P643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P735 in the procedure';
end-proc;