**free

ctl-opt dftactgrp(*no);

dcl-pi P626;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T84') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T84 LIMIT 1;

theCharVar = 'Hello from P626';
dsply theCharVar;
callp localProc();
P582();
P521();
P361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P626 in the procedure';
end-proc;