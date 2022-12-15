**free

ctl-opt dftactgrp(*no);

dcl-pi P1119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T1122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1122 LIMIT 1;

theCharVar = 'Hello from P1119';
dsply theCharVar;
callp localProc();
P347();
P929();
P450();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1119 in the procedure';
end-proc;