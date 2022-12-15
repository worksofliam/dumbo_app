**free

ctl-opt dftactgrp(*no);

dcl-pi P891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P765.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds theTable extname('T741') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T741 LIMIT 1;

theCharVar = 'Hello from P891';
dsply theCharVar;
callp localProc();
P765();
P731();
P457();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P891 in the procedure';
end-proc;