**free

ctl-opt dftactgrp(*no);

dcl-pi P1907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P1023.rpgleinc'
/copy 'qrpgleref/P1418.rpgleinc'

dcl-ds theTable extname('T1292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1292 LIMIT 1;

theCharVar = 'Hello from P1907';
dsply theCharVar;
callp localProc();
P1353();
P1023();
P1418();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1907 in the procedure';
end-proc;