**free

ctl-opt dftactgrp(*no);

dcl-pi P2587;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P1734.rpgleinc'
/copy 'qrpgleref/P2103.rpgleinc'

dcl-ds theTable extname('T825') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T825 LIMIT 1;

theCharVar = 'Hello from P2587';
dsply theCharVar;
callp localProc();
P699();
P1734();
P2103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2587 in the procedure';
end-proc;