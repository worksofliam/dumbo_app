**free

ctl-opt dftactgrp(*no);

dcl-pi P3255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P2411.rpgleinc'

dcl-ds T210 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T210 FROM T210 LIMIT 1;

theCharVar = 'Hello from P3255';
dsply theCharVar;
callp localProc();
P402();
P1697();
P2411();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3255 in the procedure';
end-proc;