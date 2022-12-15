**free

ctl-opt dftactgrp(*no);

dcl-pi P4228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2841.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P2097.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P4228';
dsply theCharVar;
callp localProc();
P2841();
P1121();
P2097();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4228 in the procedure';
end-proc;