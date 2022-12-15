**free

ctl-opt dftactgrp(*no);

dcl-pi P1049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P900.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P1019.rpgleinc'

dcl-ds theTable extname('T902') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T902 LIMIT 1;

theCharVar = 'Hello from P1049';
dsply theCharVar;
callp localProc();
P900();
P554();
P1019();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1049 in the procedure';
end-proc;