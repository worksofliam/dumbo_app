**free

ctl-opt dftactgrp(*no);

dcl-pi P1251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P558.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P1251';
dsply theCharVar;
callp localProc();
P638();
P561();
P558();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1251 in the procedure';
end-proc;