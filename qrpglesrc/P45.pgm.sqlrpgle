**free

ctl-opt dftactgrp(*no);

dcl-pi P45;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P45';
dsply theCharVar;
callp localProc();
P11();
P14();
P31();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P45 in the procedure';
end-proc;