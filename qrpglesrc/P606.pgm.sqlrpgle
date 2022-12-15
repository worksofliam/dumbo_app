**free

ctl-opt dftactgrp(*no);

dcl-pi P606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T127 LIMIT 1;

theCharVar = 'Hello from P606';
dsply theCharVar;
callp localProc();
P140();
P453();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P606 in the procedure';
end-proc;