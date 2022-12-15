**free

ctl-opt dftactgrp(*no);

dcl-pi P4768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1520.rpgleinc'
/copy 'qrpgleref/P3763.rpgleinc'
/copy 'qrpgleref/P1004.rpgleinc'

dcl-ds T570 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T570 FROM T570 LIMIT 1;

theCharVar = 'Hello from P4768';
dsply theCharVar;
callp localProc();
P1520();
P3763();
P1004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4768 in the procedure';
end-proc;