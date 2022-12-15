**free

ctl-opt dftactgrp(*no);

dcl-pi P510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P363.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P510';
dsply theCharVar;
callp localProc();
P363();
P85();
P80();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P510 in the procedure';
end-proc;