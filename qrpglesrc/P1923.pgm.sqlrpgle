**free

ctl-opt dftactgrp(*no);

dcl-pi P1923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P1643.rpgleinc'

dcl-ds theTable extname('T1089') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1089 LIMIT 1;

theCharVar = 'Hello from P1923';
dsply theCharVar;
callp localProc();
P29();
P506();
P1643();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1923 in the procedure';
end-proc;