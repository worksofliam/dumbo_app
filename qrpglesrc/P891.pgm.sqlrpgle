**free

ctl-opt dftactgrp(*no);

dcl-pi P891;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P891';
dsply theCharVar;
callp localProc();
P90();
P284();
P239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P891 in the procedure';
end-proc;