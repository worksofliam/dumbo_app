**free

ctl-opt dftactgrp(*no);

dcl-pi P3027;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1659.rpgleinc'
/copy 'qrpgleref/P628.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds T197 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T197 FROM T197 LIMIT 1;

theCharVar = 'Hello from P3027';
dsply theCharVar;
callp localProc();
P1659();
P628();
P130();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3027 in the procedure';
end-proc;