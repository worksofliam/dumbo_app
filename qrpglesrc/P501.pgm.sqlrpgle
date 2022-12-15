**free

ctl-opt dftactgrp(*no);

dcl-pi P501;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P487.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T594') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T594 LIMIT 1;

theCharVar = 'Hello from P501';
dsply theCharVar;
callp localProc();
P487();
P239();
P235();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P501 in the procedure';
end-proc;