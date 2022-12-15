**free

ctl-opt dftactgrp(*no);

dcl-pi P3593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3222.rpgleinc'
/copy 'qrpgleref/P3404.rpgleinc'
/copy 'qrpgleref/P361.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P3593';
dsply theCharVar;
callp localProc();
P3222();
P3404();
P361();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3593 in the procedure';
end-proc;