**free

ctl-opt dftactgrp(*no);

dcl-pi P401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P401';
dsply theCharVar;
callp localProc();
P113();
P295();
P387();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P401 in the procedure';
end-proc;