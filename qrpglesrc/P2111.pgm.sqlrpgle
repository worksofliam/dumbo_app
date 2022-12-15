**free

ctl-opt dftactgrp(*no);

dcl-pi P2111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P1991.rpgleinc'

dcl-ds theTable extname('T109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T109 LIMIT 1;

theCharVar = 'Hello from P2111';
dsply theCharVar;
callp localProc();
P1271();
P105();
P1991();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2111 in the procedure';
end-proc;