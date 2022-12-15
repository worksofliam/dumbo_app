**free

ctl-opt dftactgrp(*no);

dcl-pi P1165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P1165';
dsply theCharVar;
callp localProc();
P188();
P647();
P487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1165 in the procedure';
end-proc;