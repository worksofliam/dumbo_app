**free

ctl-opt dftactgrp(*no);

dcl-pi P3457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2855.rpgleinc'
/copy 'qrpgleref/P2065.rpgleinc'
/copy 'qrpgleref/P324.rpgleinc'

dcl-ds theTable extname('T1136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1136 LIMIT 1;

theCharVar = 'Hello from P3457';
dsply theCharVar;
callp localProc();
P2855();
P2065();
P324();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3457 in the procedure';
end-proc;