**free

ctl-opt dftactgrp(*no);

dcl-pi P5207;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3626.rpgleinc'
/copy 'qrpgleref/P3628.rpgleinc'
/copy 'qrpgleref/P1874.rpgleinc'

dcl-ds theTable extname('T424') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T424 LIMIT 1;

theCharVar = 'Hello from P5207';
dsply theCharVar;
callp localProc();
P3626();
P3628();
P1874();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5207 in the procedure';
end-proc;