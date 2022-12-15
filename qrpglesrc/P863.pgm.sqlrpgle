**free

ctl-opt dftactgrp(*no);

dcl-pi P863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P863';
dsply theCharVar;
callp localProc();
P75();
P487();
P776();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P863 in the procedure';
end-proc;