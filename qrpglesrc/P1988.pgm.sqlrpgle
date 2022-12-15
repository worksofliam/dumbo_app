**free

ctl-opt dftactgrp(*no);

dcl-pi P1988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'

dcl-ds theTable extname('T1385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1385 LIMIT 1;

theCharVar = 'Hello from P1988';
dsply theCharVar;
callp localProc();
P483();
P249();
P806();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1988 in the procedure';
end-proc;