**free

ctl-opt dftactgrp(*no);

dcl-pi P2564;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2156.rpgleinc'
/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P2102.rpgleinc'

dcl-ds theTable extname('T1661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1661 LIMIT 1;

theCharVar = 'Hello from P2564';
dsply theCharVar;
callp localProc();
P2156();
P727();
P2102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2564 in the procedure';
end-proc;