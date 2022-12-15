**free

ctl-opt dftactgrp(*no);

dcl-pi P204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P204';
dsply theCharVar;
callp localProc();
P58();
P170();
P17();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P204 in the procedure';
end-proc;