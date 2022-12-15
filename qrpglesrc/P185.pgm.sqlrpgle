**free

ctl-opt dftactgrp(*no);

dcl-pi P185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P185';
dsply theCharVar;
callp localProc();
P77();
P103();
P129();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P185 in the procedure';
end-proc;