**free

ctl-opt dftactgrp(*no);

dcl-pi P1324;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P269.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'

dcl-ds theTable extname('T1361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1361 LIMIT 1;

theCharVar = 'Hello from P1324';
dsply theCharVar;
callp localProc();
P269();
P1169();
P955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1324 in the procedure';
end-proc;