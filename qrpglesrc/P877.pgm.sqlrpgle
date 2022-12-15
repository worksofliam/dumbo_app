**free

ctl-opt dftactgrp(*no);

dcl-pi P877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'

dcl-ds theTable extname('T750') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T750 LIMIT 1;

theCharVar = 'Hello from P877';
dsply theCharVar;
callp localProc();
P740();
P523();
P319();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P877 in the procedure';
end-proc;