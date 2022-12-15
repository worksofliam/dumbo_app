**free

ctl-opt dftactgrp(*no);

dcl-pi P1058;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1015.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P1058';
dsply theCharVar;
callp localProc();
P1015();
P796();
P978();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1058 in the procedure';
end-proc;