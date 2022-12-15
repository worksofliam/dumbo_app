**free

ctl-opt dftactgrp(*no);

dcl-pi P1020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P731.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T27') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T27 LIMIT 1;

theCharVar = 'Hello from P1020';
dsply theCharVar;
callp localProc();
P731();
P370();
P427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1020 in the procedure';
end-proc;