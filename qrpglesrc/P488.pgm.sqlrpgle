**free

ctl-opt dftactgrp(*no);

dcl-pi P488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P57.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T22') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T22 LIMIT 1;

theCharVar = 'Hello from P488';
dsply theCharVar;
callp localProc();
P18();
P57();
P405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P488 in the procedure';
end-proc;