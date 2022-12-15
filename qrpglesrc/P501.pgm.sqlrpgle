**free

ctl-opt dftactgrp(*no);

dcl-pi P501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds theTable extname('T242') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T242 LIMIT 1;

theCharVar = 'Hello from P501';
dsply theCharVar;
callp localProc();
P295();
P177();
P457();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P501 in the procedure';
end-proc;