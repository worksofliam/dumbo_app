**free

ctl-opt dftactgrp(*no);

dcl-pi P4739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4238.rpgleinc'
/copy 'qrpgleref/P848.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T395') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T395 LIMIT 1;

theCharVar = 'Hello from P4739';
dsply theCharVar;
callp localProc();
P4238();
P848();
P130();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4739 in the procedure';
end-proc;