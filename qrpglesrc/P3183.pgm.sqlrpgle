**free

ctl-opt dftactgrp(*no);

dcl-pi P3183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P2785.rpgleinc'

dcl-ds T946 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T946 FROM T946 LIMIT 1;

theCharVar = 'Hello from P3183';
dsply theCharVar;
callp localProc();
P903();
P320();
P2785();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3183 in the procedure';
end-proc;