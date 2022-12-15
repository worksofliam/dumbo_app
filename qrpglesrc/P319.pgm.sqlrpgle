**free

ctl-opt dftactgrp(*no);

dcl-pi P319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P319';
dsply theCharVar;
callp localProc();
P171();
P148();
P295();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P319 in the procedure';
end-proc;