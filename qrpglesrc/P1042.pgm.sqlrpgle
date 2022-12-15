**free

ctl-opt dftactgrp(*no);

dcl-pi P1042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P166.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T698 LIMIT 1;

theCharVar = 'Hello from P1042';
dsply theCharVar;
callp localProc();
P708();
P166();
P405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1042 in the procedure';
end-proc;