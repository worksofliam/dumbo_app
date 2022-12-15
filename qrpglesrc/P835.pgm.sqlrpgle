**free

ctl-opt dftactgrp(*no);

dcl-pi P835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T1238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1238 LIMIT 1;

theCharVar = 'Hello from P835';
dsply theCharVar;
callp localProc();
P737();
P617();
P427();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P835 in the procedure';
end-proc;