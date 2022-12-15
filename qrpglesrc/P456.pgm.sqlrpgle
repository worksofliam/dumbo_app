**free

ctl-opt dftactgrp(*no);

dcl-pi P456;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P456';
dsply theCharVar;
callp localProc();
P315();
P388();
P256();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P456 in the procedure';
end-proc;