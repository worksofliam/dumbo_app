**free

ctl-opt dftactgrp(*no);

dcl-pi P1199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P1199';
dsply theCharVar;
callp localProc();
P161();
P247();
P207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1199 in the procedure';
end-proc;