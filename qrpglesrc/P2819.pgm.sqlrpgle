**free

ctl-opt dftactgrp(*no);

dcl-pi P2819;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P1262.rpgleinc'

dcl-ds T883 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T883 FROM T883 LIMIT 1;

theCharVar = 'Hello from P2819';
dsply theCharVar;
callp localProc();
P1264();
P903();
P1262();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2819 in the procedure';
end-proc;