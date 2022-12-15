**free

ctl-opt dftactgrp(*no);

dcl-pi P2021;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P1280.rpgleinc'

dcl-ds theTable extname('T1673') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1673 LIMIT 1;

theCharVar = 'Hello from P2021';
dsply theCharVar;
callp localProc();
P647();
P2012();
P1280();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2021 in the procedure';
end-proc;