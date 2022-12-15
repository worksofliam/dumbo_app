**free

ctl-opt dftactgrp(*no);

dcl-pi P1188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P511.rpgleinc'

dcl-ds theTable extname('T307') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T307 LIMIT 1;

theCharVar = 'Hello from P1188';
dsply theCharVar;
callp localProc();
P858();
P782();
P511();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1188 in the procedure';
end-proc;