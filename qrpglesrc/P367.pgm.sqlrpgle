**free

ctl-opt dftactgrp(*no);

dcl-pi P367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'

dcl-ds theTable extname('T1659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1659 LIMIT 1;

theCharVar = 'Hello from P367';
dsply theCharVar;
callp localProc();
P211();
P281();
P45();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P367 in the procedure';
end-proc;