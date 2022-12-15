**free

ctl-opt dftactgrp(*no);

dcl-pi P79;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P79';
dsply theCharVar;
callp localProc();
P19();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P79 in the procedure';
end-proc;