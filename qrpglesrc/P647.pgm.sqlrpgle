**free

ctl-opt dftactgrp(*no);

dcl-pi P647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T658') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T658 LIMIT 1;

theCharVar = 'Hello from P647';
dsply theCharVar;
callp localProc();
P215();
P606();
P161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P647 in the procedure';
end-proc;