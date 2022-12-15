**free

ctl-opt dftactgrp(*no);

dcl-pi P153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T115 LIMIT 1;

theCharVar = 'Hello from P153';
dsply theCharVar;
callp localProc();
P73();
P95();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P153 in the procedure';
end-proc;