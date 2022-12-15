**free

ctl-opt dftactgrp(*no);

dcl-pi P1868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P578.rpgleinc'
/copy 'qrpgleref/P1431.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'

dcl-ds theTable extname('T460') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T460 LIMIT 1;

theCharVar = 'Hello from P1868';
dsply theCharVar;
callp localProc();
P578();
P1431();
P911();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1868 in the procedure';
end-proc;