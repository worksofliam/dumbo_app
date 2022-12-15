**free

ctl-opt dftactgrp(*no);

dcl-pi P3444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1305.rpgleinc'
/copy 'qrpgleref/P3078.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P3444';
dsply theCharVar;
callp localProc();
P1305();
P3078();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3444 in the procedure';
end-proc;