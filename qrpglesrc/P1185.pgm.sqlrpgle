**free

ctl-opt dftactgrp(*no);

dcl-pi P1185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'

dcl-ds theTable extname('T631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T631 LIMIT 1;

theCharVar = 'Hello from P1185';
dsply theCharVar;
callp localProc();
P730();
P704();
P921();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1185 in the procedure';
end-proc;