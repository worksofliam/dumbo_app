**free

ctl-opt dftactgrp(*no);

dcl-pi P2095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'

dcl-ds theTable extname('T524') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T524 LIMIT 1;

theCharVar = 'Hello from P2095';
dsply theCharVar;
callp localProc();
P1013();
P616();
P2029();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2095 in the procedure';
end-proc;