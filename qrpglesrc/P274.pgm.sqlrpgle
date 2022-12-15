**free

ctl-opt dftactgrp(*no);

dcl-pi P274;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P274';
dsply theCharVar;
callp localProc();
P223();
P187();
P74();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P274 in the procedure';
end-proc;