**free

ctl-opt dftactgrp(*no);

dcl-pi P4358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3881.rpgleinc'
/copy 'qrpgleref/P917.rpgleinc'
/copy 'qrpgleref/P3437.rpgleinc'

dcl-ds theTable extname('T918') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T918 LIMIT 1;

theCharVar = 'Hello from P4358';
dsply theCharVar;
callp localProc();
P3881();
P917();
P3437();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4358 in the procedure';
end-proc;