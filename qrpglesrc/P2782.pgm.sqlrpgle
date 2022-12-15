**free

ctl-opt dftactgrp(*no);

dcl-pi P2782;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2410.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'

dcl-ds T855 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T855 FROM T855 LIMIT 1;

theCharVar = 'Hello from P2782';
dsply theCharVar;
callp localProc();
P2410();
P338();
P2063();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2782 in the procedure';
end-proc;