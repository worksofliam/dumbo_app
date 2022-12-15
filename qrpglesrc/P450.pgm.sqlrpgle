**free

ctl-opt dftactgrp(*no);

dcl-pi P450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'

dcl-ds theTable extname('T298') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T298 LIMIT 1;

theCharVar = 'Hello from P450';
dsply theCharVar;
callp localProc();
P3();
P340();
P32();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P450 in the procedure';
end-proc;