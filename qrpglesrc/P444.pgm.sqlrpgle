**free

ctl-opt dftactgrp(*no);

dcl-pi P444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'

dcl-ds theTable extname('T449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T449 LIMIT 1;

theCharVar = 'Hello from P444';
dsply theCharVar;
callp localProc();
P24();
P98();
P388();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P444 in the procedure';
end-proc;