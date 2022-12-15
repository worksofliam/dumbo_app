**free

ctl-opt dftactgrp(*no);

dcl-pi P3526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P987.rpgleinc'

dcl-ds T570 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T570 FROM T570 LIMIT 1;

theCharVar = 'Hello from P3526';
dsply theCharVar;
callp localProc();
P1143();
P67();
P987();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3526 in the procedure';
end-proc;