**free

ctl-opt dftactgrp(*no);

dcl-pi P48;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T410 LIMIT 1;

theCharVar = 'Hello from P48';
dsply theCharVar;
callp localProc();
P5();
P40();
P15();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P48 in the procedure';
end-proc;