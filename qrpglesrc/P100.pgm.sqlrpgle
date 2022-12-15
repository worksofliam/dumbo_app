**free

ctl-opt dftactgrp(*no);

dcl-pi P100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T474') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T474 LIMIT 1;

theCharVar = 'Hello from P100';
dsply theCharVar;
callp localProc();
P54();
P97();
P78();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P100 in the procedure';
end-proc;