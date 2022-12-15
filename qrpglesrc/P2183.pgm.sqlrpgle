**free

ctl-opt dftactgrp(*no);

dcl-pi P2183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'
/copy 'qrpgleref/P1881.rpgleinc'

dcl-ds theTable extname('T1688') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1688 LIMIT 1;

theCharVar = 'Hello from P2183';
dsply theCharVar;
callp localProc();
P1048();
P703();
P1881();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2183 in the procedure';
end-proc;