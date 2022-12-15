**free

ctl-opt dftactgrp(*no);

dcl-pi P109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T174 LIMIT 1;

theCharVar = 'Hello from P109';
dsply theCharVar;
callp localProc();
P88();
P105();
P35();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P109 in the procedure';
end-proc;