**free

ctl-opt dftactgrp(*no);

dcl-pi P1590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P1590';
dsply theCharVar;
callp localProc();
P325();
P1192();
P506();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1590 in the procedure';
end-proc;