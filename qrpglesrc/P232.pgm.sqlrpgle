**free

ctl-opt dftactgrp(*no);

dcl-pi P232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'

dcl-ds theTable extname('T1106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1106 LIMIT 1;

theCharVar = 'Hello from P232';
dsply theCharVar;
callp localProc();
P229();
P29();
P158();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P232 in the procedure';
end-proc;