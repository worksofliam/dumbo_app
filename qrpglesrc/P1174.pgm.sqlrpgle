**free

ctl-opt dftactgrp(*no);

dcl-pi P1174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1116.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P1174';
dsply theCharVar;
callp localProc();
P1116();
P129();
P98();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1174 in the procedure';
end-proc;