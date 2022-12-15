**free

ctl-opt dftactgrp(*no);

dcl-pi P5388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P716.rpgleinc'
/copy 'qrpgleref/P4977.rpgleinc'
/copy 'qrpgleref/P4206.rpgleinc'

dcl-ds theTable extname('T1598') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1598 LIMIT 1;

theCharVar = 'Hello from P5388';
dsply theCharVar;
callp localProc();
P716();
P4977();
P4206();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5388 in the procedure';
end-proc;