**free

ctl-opt dftactgrp(*no);

dcl-pi P5064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P1372.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds T312 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T312 FROM T312 LIMIT 1;

theCharVar = 'Hello from P5064';
dsply theCharVar;
callp localProc();
P415();
P1372();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5064 in the procedure';
end-proc;