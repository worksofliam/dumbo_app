**free

ctl-opt dftactgrp(*no);

dcl-pi P1017;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T346') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T346 LIMIT 1;

theCharVar = 'Hello from P1017';
dsply theCharVar;
callp localProc();
P941();
P223();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1017 in the procedure';
end-proc;