**free

ctl-opt dftactgrp(*no);

dcl-pi P1809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds theTable extname('T65') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T65 LIMIT 1;

theCharVar = 'Hello from P1809';
dsply theCharVar;
callp localProc();
P33();
P762();
P714();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1809 in the procedure';
end-proc;