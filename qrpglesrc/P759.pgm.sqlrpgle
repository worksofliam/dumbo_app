**free

ctl-opt dftactgrp(*no);

dcl-pi P759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P759';
dsply theCharVar;
callp localProc();
P473();
P101();
P241();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P759 in the procedure';
end-proc;