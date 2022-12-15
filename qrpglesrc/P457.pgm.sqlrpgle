**free

ctl-opt dftactgrp(*no);

dcl-pi P457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T81') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T81 LIMIT 1;

theCharVar = 'Hello from P457';
dsply theCharVar;
callp localProc();
P258();
P181();
P212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P457 in the procedure';
end-proc;