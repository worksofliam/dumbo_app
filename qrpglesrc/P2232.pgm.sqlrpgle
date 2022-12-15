**free

ctl-opt dftactgrp(*no);

dcl-pi P2232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2098.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P2232';
dsply theCharVar;
callp localProc();
P2098();
P339();
P1162();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2232 in the procedure';
end-proc;