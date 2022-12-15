**free

ctl-opt dftactgrp(*no);

dcl-pi P860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P528.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P860';
dsply theCharVar;
callp localProc();
P293();
P528();
P524();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P860 in the procedure';
end-proc;