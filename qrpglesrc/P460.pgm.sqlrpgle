**free

ctl-opt dftactgrp(*no);

dcl-pi P460;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T181') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T181 LIMIT 1;

theCharVar = 'Hello from P460';
dsply theCharVar;
callp localProc();
P279();
P292();
P169();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P460 in the procedure';
end-proc;