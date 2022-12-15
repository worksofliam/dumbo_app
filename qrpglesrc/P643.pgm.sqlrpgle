**free

ctl-opt dftactgrp(*no);

dcl-pi P643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds theTable extname('T1674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1674 LIMIT 1;

theCharVar = 'Hello from P643';
dsply theCharVar;
callp localProc();
P408();
P331();
P144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P643 in the procedure';
end-proc;