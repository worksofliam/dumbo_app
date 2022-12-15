**free

ctl-opt dftactgrp(*no);

dcl-pi P2742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T718 LIMIT 1;

theCharVar = 'Hello from P2742';
dsply theCharVar;
callp localProc();
P97();
P363();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2742 in the procedure';
end-proc;