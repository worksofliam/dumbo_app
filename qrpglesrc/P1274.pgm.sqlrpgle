**free

ctl-opt dftactgrp(*no);

dcl-pi P1274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'

dcl-ds theTable extname('T1739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1739 LIMIT 1;

theCharVar = 'Hello from P1274';
dsply theCharVar;
callp localProc();
P569();
P230();
P477();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1274 in the procedure';
end-proc;