**free

ctl-opt dftactgrp(*no);

dcl-pi P570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P381.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P379.rpgleinc'

dcl-ds theTable extname('T359') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T359 LIMIT 1;

theCharVar = 'Hello from P570';
dsply theCharVar;
callp localProc();
P381();
P444();
P379();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P570 in the procedure';
end-proc;