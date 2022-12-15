**free

ctl-opt dftactgrp(*no);

dcl-pi P678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T1602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1602 LIMIT 1;

theCharVar = 'Hello from P678';
dsply theCharVar;
callp localProc();
P604();
P211();
P372();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P678 in the procedure';
end-proc;