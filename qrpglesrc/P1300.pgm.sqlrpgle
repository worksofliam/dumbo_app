**free

ctl-opt dftactgrp(*no);

dcl-pi P1300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P357.rpgleinc'
/copy 'qrpgleref/P940.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P1300';
dsply theCharVar;
callp localProc();
P357();
P940();
P316();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1300 in the procedure';
end-proc;