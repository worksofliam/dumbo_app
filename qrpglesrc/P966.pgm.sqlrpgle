**free

ctl-opt dftactgrp(*no);

dcl-pi P966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds theTable extname('T425') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T425 LIMIT 1;

theCharVar = 'Hello from P966';
dsply theCharVar;
callp localProc();
P383();
P715();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P966 in the procedure';
end-proc;