**free

ctl-opt dftactgrp(*no);

dcl-pi P1343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P784.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P1343';
dsply theCharVar;
callp localProc();
P784();
P205();
P511();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1343 in the procedure';
end-proc;