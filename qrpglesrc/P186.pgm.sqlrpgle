**free

ctl-opt dftactgrp(*no);

dcl-pi P186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P184.rpgleinc'

dcl-ds theTable extname('T179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T179 LIMIT 1;

theCharVar = 'Hello from P186';
dsply theCharVar;
callp localProc();
P63();
P146();
P184();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P186 in the procedure';
end-proc;