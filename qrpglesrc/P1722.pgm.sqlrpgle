**free

ctl-opt dftactgrp(*no);

dcl-pi P1722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'

dcl-ds theTable extname('T757') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T757 LIMIT 1;

theCharVar = 'Hello from P1722';
dsply theCharVar;
callp localProc();
P1710();
P858();
P1013();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1722 in the procedure';
end-proc;