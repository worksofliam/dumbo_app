**free

ctl-opt dftactgrp(*no);

dcl-pi P2682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2295.rpgleinc'
/copy 'qrpgleref/P2503.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T944') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T944 LIMIT 1;

theCharVar = 'Hello from P2682';
dsply theCharVar;
callp localProc();
P2295();
P2503();
P986();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2682 in the procedure';
end-proc;