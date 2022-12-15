**free

ctl-opt dftactgrp(*no);

dcl-pi P203;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'

dcl-ds T618 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T618 FROM T618 LIMIT 1;

theCharVar = 'Hello from P203';
dsply theCharVar;
callp localProc();
P168();
P124();
P183();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P203 in the procedure';
end-proc;