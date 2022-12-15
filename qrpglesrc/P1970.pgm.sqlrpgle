**free

ctl-opt dftactgrp(*no);

dcl-pi P1970;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'

dcl-ds theTable extname('T672') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T672 LIMIT 1;

theCharVar = 'Hello from P1970';
dsply theCharVar;
callp localProc();
P1157();
P1829();
P1469();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1970 in the procedure';
end-proc;