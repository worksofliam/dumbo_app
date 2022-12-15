**free

ctl-opt dftactgrp(*no);

dcl-pi P735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'

dcl-ds theTable extname('T1087') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1087 LIMIT 1;

theCharVar = 'Hello from P735';
dsply theCharVar;
callp localProc();
P613();
P535();
P229();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P735 in the procedure';
end-proc;