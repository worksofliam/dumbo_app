**free

ctl-opt dftactgrp(*no);

dcl-pi P185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T37') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T37 LIMIT 1;

theCharVar = 'Hello from P185';
dsply theCharVar;
callp localProc();
P125();
P26();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P185 in the procedure';
end-proc;