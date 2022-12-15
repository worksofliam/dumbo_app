**free

ctl-opt dftactgrp(*no);

dcl-pi P5425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5099.rpgleinc'
/copy 'qrpgleref/P2720.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P5425';
dsply theCharVar;
callp localProc();
P5099();
P2720();
P235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5425 in the procedure';
end-proc;