**free

ctl-opt dftactgrp(*no);

dcl-pi P4966;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P3616.rpgleinc'

dcl-ds theTable extname('T1500') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1500 LIMIT 1;

theCharVar = 'Hello from P4966';
dsply theCharVar;
callp localProc();
P968();
P1206();
P3616();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4966 in the procedure';
end-proc;