**free

ctl-opt dftactgrp(*no);

dcl-pi P4472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P3128.rpgleinc'
/copy 'qrpgleref/P4039.rpgleinc'

dcl-ds theTable extname('T1829') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1829 LIMIT 1;

theCharVar = 'Hello from P4472';
dsply theCharVar;
callp localProc();
P775();
P3128();
P4039();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4472 in the procedure';
end-proc;