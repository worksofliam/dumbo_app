**free

ctl-opt dftactgrp(*no);

dcl-pi P434;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T768 LIMIT 1;

theCharVar = 'Hello from P434';
dsply theCharVar;
callp localProc();
P140();
P225();
P106();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P434 in the procedure';
end-proc;