**free

ctl-opt dftactgrp(*no);

dcl-pi P2432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1616.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'

dcl-ds theTable extname('T34') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T34 LIMIT 1;

theCharVar = 'Hello from P2432';
dsply theCharVar;
callp localProc();
P1616();
P1190();
P556();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2432 in the procedure';
end-proc;