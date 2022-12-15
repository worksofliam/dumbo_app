**free

ctl-opt dftactgrp(*no);

dcl-pi P4457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3183.rpgleinc'
/copy 'qrpgleref/P2040.rpgleinc'
/copy 'qrpgleref/P3106.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P4457';
dsply theCharVar;
callp localProc();
P3183();
P2040();
P3106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4457 in the procedure';
end-proc;