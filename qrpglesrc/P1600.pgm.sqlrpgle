**free

ctl-opt dftactgrp(*no);

dcl-pi P1600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1160.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P1480.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P1600';
dsply theCharVar;
callp localProc();
P1160();
P875();
P1480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1600 in the procedure';
end-proc;