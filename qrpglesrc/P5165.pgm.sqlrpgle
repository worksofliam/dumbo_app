**free

ctl-opt dftactgrp(*no);

dcl-pi P5165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2774.rpgleinc'
/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P1049.rpgleinc'

dcl-ds T730 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T730 FROM T730 LIMIT 1;

theCharVar = 'Hello from P5165';
dsply theCharVar;
callp localProc();
P2774();
P677();
P1049();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5165 in the procedure';
end-proc;