**free

ctl-opt dftactgrp(*no);

dcl-pi P3760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1195.rpgleinc'
/copy 'qrpgleref/P3252.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T1386') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1386 LIMIT 1;

theCharVar = 'Hello from P3760';
dsply theCharVar;
callp localProc();
P1195();
P3252();
P37();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3760 in the procedure';
end-proc;