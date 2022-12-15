**free

ctl-opt dftactgrp(*no);

dcl-pi P2308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P914.rpgleinc'
/copy 'qrpgleref/P993.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds theTable extname('T607') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T607 LIMIT 1;

theCharVar = 'Hello from P2308';
dsply theCharVar;
callp localProc();
P914();
P993();
P568();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2308 in the procedure';
end-proc;