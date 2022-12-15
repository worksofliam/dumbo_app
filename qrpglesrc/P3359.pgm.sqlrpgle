**free

ctl-opt dftactgrp(*no);

dcl-pi P3359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P3270.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P3359';
dsply theCharVar;
callp localProc();
P544();
P3270();
P523();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3359 in the procedure';
end-proc;