**free

ctl-opt dftactgrp(*no);

dcl-pi P4153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1851.rpgleinc'
/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P716.rpgleinc'

dcl-ds theTable extname('T29') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T29 LIMIT 1;

theCharVar = 'Hello from P4153';
dsply theCharVar;
callp localProc();
P1851();
P2062();
P716();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4153 in the procedure';
end-proc;