**free

ctl-opt dftactgrp(*no);

dcl-pi P659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T193 LIMIT 1;

theCharVar = 'Hello from P659';
dsply theCharVar;
callp localProc();
P253();
P526();
P417();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P659 in the procedure';
end-proc;