**free

ctl-opt dftactgrp(*no);

dcl-pi P3307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3115.rpgleinc'
/copy 'qrpgleref/P922.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds theTable extname('T510') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T510 LIMIT 1;

theCharVar = 'Hello from P3307';
dsply theCharVar;
callp localProc();
P3115();
P922();
P854();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3307 in the procedure';
end-proc;