**free

ctl-opt dftactgrp(*no);

dcl-pi P956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds theTable extname('T435') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T435 LIMIT 1;

theCharVar = 'Hello from P956';
dsply theCharVar;
callp localProc();
P288();
P241();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P956 in the procedure';
end-proc;