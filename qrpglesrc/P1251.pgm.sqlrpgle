**free

ctl-opt dftactgrp(*no);

dcl-pi P1251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1248.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P1251';
dsply theCharVar;
callp localProc();
P1248();
P133();
P322();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1251 in the procedure';
end-proc;