**free

ctl-opt dftactgrp(*no);

dcl-pi P606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'

dcl-ds theTable extname('T1578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1578 LIMIT 1;

theCharVar = 'Hello from P606';
dsply theCharVar;
callp localProc();
P232();
P346();
P550();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P606 in the procedure';
end-proc;